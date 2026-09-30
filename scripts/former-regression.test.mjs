import assert from 'node:assert/strict';
import test from 'node:test';
import * as c from '../js-out/calcit.core.mjs';
import { comp_live_button } from '../js-out/app.comp.button.mjs';
import { comp_container } from '../js-out/app.comp.container.mjs';
import { store, Op } from '../js-out/app.schema.mjs';
import { updater } from '../js-out/app.updater.mjs';
import { detect_cdn_$q_ } from '../js-out/app.config.mjs';
import { component_$q_, component_tree } from '../js-out/respo.util.detect.mjs';
import { make_string } from '../js-out/respo.render.html.mjs';

const t = c.init_tags(['event', 'children', 'click', 'input', 'some', 'content', 'data', 'value', 'store', 'states', 'cursor', 'run', 'darken?']);
const map = c._$n__$M_;
const field = (v, k) => c.option_$o_unwrap(c.get(v, k));
const nth = (v, i) => c.option_$o_unwrap(c.nth(v, i));
const en = c._$n_enum_$o_nth;
function handlers(node, kind, label = '', result = []) {
  if (component_$q_(node)) return handlers(c.option_$o_unwrap(component_tree(node)), kind, label, result);
  const event = c.get(node, t.event);
  if (en(event, 0) === t.some && (!label || make_string(node).includes(`>${label}<`))) {
    const fn = c.get(c.option_$o_unwrap(event), kind);
    if (en(fn, 0) === t.some) result.push(c.option_$o_unwrap(fn));
  }
  const children = c.get(node, t.children);
  if (en(children, 0) === t.some) {
    const pairs = c.option_$o_unwrap(children);
    for (let i = 0; i < c.count(pairs); i++) handlers(nth(nth(pairs, i), 1), kind, label, result);
  }
  return result;
}
function withTimer(fn) {
  const original = globalThis.setTimeout;
  let timer;
  try {
    globalThis.setTimeout = (callback, delay) => { timer = { callback, delay }; return 1; };
    fn(() => timer);
  } finally { globalThis.setTimeout = original; }
}
test('live button dispatch and timer are single typed state operations', () => withTimer(getTimer => {
  let next = store, clicks = 0;
  const ops = [];
  const dispatch = (...args) => { assert.equal(args.length, 1); ops.push(args[0]); next = updater(next, args[0], 'button', 1); };
  const tree = comp_live_button(map(t.cursor, c._$L_(t.run)), 'Run', () => { clicks++; });
  handlers(tree, t.click, 'Run')[0](null, dispatch);
  assert.equal(clicks, 1);
  assert.equal(getTimer().delay, 400);
  assert.equal(field(field(field(field(next, t.states), t.run), t.data), t['darken?']), true);
  getTimer().callback();
  assert.equal(ops.length, 2);
  assert.equal(field(field(field(field(next, t.states), t.run), t.data), t['darken?']), false);
  assert.equal(c._$n_map_$o_contains_$q_(field(next, t.states), t.states), false);
  assert.equal(field(next, t.content), field(store, t.content));
}));
test('Run converts Cirru EDN to Lisp and keeps nested button state isolated', () => withTimer(getTimer => {
  let next = c.assoc(store, t.content, '[] 1 2');
  handlers(comp_container(map(t.store, next)), t.click, 'Run')[0](null, (...args) => {
    assert.equal(args.length, 1);
    next = updater(next, args[0], 'run', 1);
  });
  assert.equal(field(next, t.data), '(1 2)');
  getTimer().callback();
  assert.equal(field(next, t.data), '(1 2)');
}));
test('both textareas dispatch a single typed operation to their own field', () => {
  const inputs = handlers(comp_container(map(t.store, store)), t.input);
  assert.equal(inputs.length, 2);
  for (const [i, key] of [t.content, t.data].entries()) {
    let next;
    inputs[i](map(t.value, `fixture-${i}`), (...args) => { assert.equal(args.length, 1); next = updater(store, args[0], 'input', 1); });
    assert.equal(field(next, key), `fixture-${i}`);
  }
});
test('missing input value is explicitly unwrapped to empty string', () => {
  let next;
  handlers(comp_container(map(t.store, store)), t.input)[0](map(), (...args) => { next = updater(store, args[0], 'input', 1); });
  assert.equal(field(next, t.content), '');
});
test('typed hydrate-storage operation preserves the exact Store', () => {
  const saved = c.assoc(store, t.content, 'saved');
  assert.ok(c._$e_(updater(store, c._PCT__$o__$o_(Op, c.newTag('hydrate-storage'), saved), 'hydrate', 1), saved));
});
test('CDN environment adapter returns a Bool and preserves exact true semantics', () => {
  const saved = process.env.cdn;
  try {
    for (const value of ['true', 'false', '1', undefined]) {
      if (value === undefined) delete process.env.cdn;
      else process.env.cdn = value;
      assert.equal(detect_cdn_$q_(), value === 'true');
    }
  } finally {
    if (saved === undefined) delete process.env.cdn;
    else process.env.cdn = saved;
  }
});
