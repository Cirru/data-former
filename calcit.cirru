
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |reel.calcit/ |js-ffi/
      :type-slots $ {} $ :dispatch-op 'app.schema/Op
  :files $ {}
    'app.comp.button $ %{} 'FileEntry
      :defs $ {} $ 'comp-live-button
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-live-button (states text on-click)
            let
                cursor $ decode-map-as
                  .unwrap-or (get states :cursor) ([])
                  List respo.schema/CoordKey
                state $ decode-map-as
                  .unwrap-or (get states :data)
                    {} $ :darken? false
                  Map Tag Bool
              button $ {}
                :style $ merge ui/button $ if
                  .unwrap-or (get state :darken?) false
                  {} $ :background-color $ hsl 0 0 94
                  {}
                :inner-text text
                :on-click $ fn (event d!)
                  hint-fn $ Fn respo.schema/RespoEvent
                    Fn app.schema/Op $ -> Unit
                    -> Unit
                  on-click event d!
                  d! $ Op :states cursor $ assoc state :darken? true
                  browser/set-timeout!
                    fn ()
                      hint-fn $ Fn $ -> Unit
                      d! $ Op :states cursor $ assoc state :darken? false
                    , 400
                  , &unit
          :examples $ []
          :schema $ quote $ Fn respo.schema/States String respo.schema/EventHandler (-> respo.schema/Component) (:features :js-ffi)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.button
          :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp >> <> div button textarea span
            respo.comp.space :refer $ =<
            app.config :refer $ dev?
            js-ffi.browser :as browser
            app.schema :refer $ Op
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'CopyScalar $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion CopyScalar String Number Bool Tag Symbol
          :examples $ []
          :schema $ quote UnionDef
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel)
            let
                store $ :store reel
                states $ :states store
                content $ :content store
                data $ :data store
              div
                {} $ :style $ merge ui/global ui/fullscreen ui/column
                div
                  {} $ :style $ merge ui/row-parted
                    {} $ :padding 8
                  span $ {}
                  div ({})
                    comp-live-button (>> states :run) |Run $ fn (e d!)
                      hint-fn $ Fn respo.schema/RespoEvent
                        Fn app.schema/Op $ -> Unit
                        -> Unit
                      d! $ Op :data $ format-to-lisp (parse-cirru-edn content)
                    respo.comp.space/space-x 8
                    comp-live-button (>> states :copy) |Copy $ fn (e d!)
                      hint-fn $ Fn respo.schema/RespoEvent
                        Fn app.schema/Op $ -> Unit
                        -> Unit
                      copy! $ scalar-copy-text data
                      , &unit
                div
                  {} $ :style $ merge ui/flex ui/row
                  textarea $ {} (:value content) (:placeholder |Content)
                    :style $ merge (merge ui/flex ui/textarea)
                      {} $ :font-family ui/font-code
                    :on-input $ fn (e d!)
                      hint-fn $ Fn respo.schema/RespoEvent
                        Fn app.schema/Op $ -> Unit
                        -> Unit
                      d! $ Op :content $ input-text e
                  textarea $ {} (:value data) (:placeholder |data)
                    :style $ merge (merge ui/flex ui/textarea)
                      {} $ :font-family ui/font-code
                    :on-input $ fn (e d!)
                      hint-fn $ Fn respo.schema/RespoEvent
                        Fn app.schema/Op $ -> Unit
                        -> Unit
                      d! $ Op :data $ input-text e
                if dev?
                  Option :some $ reel.comp.reel/comp-typed-reel (>> states :reel) reel $ {}
                  Option :none
          :examples $ []
          :schema $ quote $ Fn (reel.typed/State app.schema/Op app.schema/Store) (-> respo.schema/Component) (:features :js-ffi)
        'input-text $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn input-text (event)
            let
                value $ :value event
              if
                or (nil? value)
                  = :unit $ type-of value
                , | $ decode-map-as value String
          :examples $ []
          :schema $ quote $ Fn respo.schema/RespoEvent (-> String)
        'scalar-copy-text $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn scalar-copy-text (value)
            if (nil? value) | $ match (try-decode-map-as value app.comp.container/CopyScalar)
              (:ok scalar)
                match scalar
                  (String text) text
                  (Number number) (to-string number)
                  (Bool flag) (to-string flag)
                  (Tag tag) (to-string tag)
                  (Symbol symbol) (to-string symbol)
              (:err _message) (raise "|Only scalar data can be copied")
          :examples $ []
          :schema $ quote $ Fn T (-> String) (:generics T)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp >> <> div button textarea span
            app.config :refer $ dev?
            |copy-text-to-clipboard :default copy!
            app.comp.button :refer $ comp-live-button
            app.schema :refer $ Op Store
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'cdn? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def cdn? (detect-cdn?)
          :examples $ []
          :schema $ quote Bool
        'detect-cdn? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn detect-cdn? ()
            hint-fn $ Fn (-> Bool) (:features :js-ffi)
            cond
                exists? js/window
                , false
              (exists? js/process)
                = |true $
                  get-env |cdn
                  , .unwrap-or |false
              true false
          :examples $ []
          :schema $ quote $ Fn (-> Bool) (:features :js-ffi)
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $
              get-env |mode
              , .unwrap-or |release
          :examples $ []
          :schema $ quote Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} (:dev-ui |http://localhost:8100/main.css) (:release-ui |http://cdn.tiye.me/favored-fonts/main.css) (:cdn-url |http://cdn.tiye.me/data-former/) (:cdn-folder |tiye.me:cdn/data-former) (:title "|Data former") (:icon |http://cdn.tiye.me/logo/cirru.png) (:storage-key |data-former) (:upload-folder |tiye.me:repo/Cirru/data-former/)
          :examples $ []
          :schema $ quote $ Map Tag String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel
            reel.typed/State :base schema/store :store schema/store :records ([]) :pointer (Option :none) :stopped? false :display? false :merged? false
          :examples $ []
          :schema $ quote $ Ref (reel.typed/State app.schema/Op app.schema/Store)
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when config/dev? $ println |Dispatch: op
            reset! *reel $ match (reel.typed/decode-control op)
              (:some control) (reel.typed/apply-control updater @*reel control)
              (:none)
                reel.typed/record-op updater @*reel op (generate-id!) (js-ffi.shared/now-ms)
            , &unit
          :examples $ []
          :schema $ quote $ Fn app.schema/Op (-> Unit) (:features :js-ffi)
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            let
                raw $ browser/storage-get-or
                    get config/site :storage-key
                    , .unwrap-or |data-former
                  , |
              when (not= raw |)
                let
                    restored $ schema/restore-store $ parse-cirru-edn raw
                  dispatch! $ schema/Op :hydrate-storage restored
            render-app!
            add-watch! *reel :changes $ fn (r p) (render-app!)
            browser/add-event-listener! |beforeunload $ fn (event) (persist-storage!)
            browser/set-interval!
              fn () $ persist-storage!
              , 60000
            println "|App started."
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn mount-target ()
            respo-browser/narrow-element $
              browser/query-selector |.app
              , .unwrap
          :examples $ []
          :schema $ quote $ Fn (-> respo.dom/DomElement) (:features :js-ffi)
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            browser/storage-set!
              .unwrap-or (get config/site :storage-key) |data-former
              format-cirru-edn $ :store @*reel
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch! *reel :changes) (clear-cache!)
                add-watch! *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ reel.typed/refresh updater @*reel schema/store
                hud! |ok~ |Ok
              hud! |error build-errors
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render! (mount-target) (comp-container @*reel) dispatch!
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            respo.core :refer $ render! clear-cache! realize-ssr!
            app.comp.container :refer $ comp-container
            app.updater :refer $ updater
            app.schema :as schema
            cljs.reader :refer $ read-string
            app.config :as config
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
            js-ffi.browser :as browser
            respo.ffi.browser :as respo-browser
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'Op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Op
            :states (List respo.schema/CoordKey) (Map Tag Bool)
            :content String
            :data Dynamic
            :hydrate-storage app.schema/Store
            :reel/toggle
            :reel/recall Number
            :reel/run
            :reel/step
            :reel/merge
            :reel/reset
            :reel/remove Number
          :examples $ []
          :schema $ quote EnumDef
        'Store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Store
            :states $ Map Dynamic Dynamic
            :content String
            :data Dynamic
          :examples $ []
          :schema $ quote StructDef
        'restore-store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn restore-store (data)
            if (struct? data)
              struct-match data (Store checked checked)
                _ other $ let
                    wire-template $ parse-cirru-edn $ format-cirru-edn store
                  if (struct? wire-template)
                    if
                      = (struct-definition other) (struct-definition wire-template)
                      decode-map-as (&struct:to-map other) 'app.schema/Store
                      raise "|Expected Data Former Store"
                    raise "|Expected Data Former Store"
              decode-map-as data 'app.schema/Store
          :examples $ []
          :schema $ quote $ Fn T (-> app.schema/Store) (:generics T)
          :tests $ [] $ %{} 'TestEntry (:name |legacy-map-and-store-roundtrip)
            :code $ quote $ let
                legacy $ {}
                  :states $ {} $ 7
                    {} $ :data false
                  :content "|saved 🐈"
                  :data 42
                saved $ restore-store legacy
                roundtrip $ restore-store $ parse-cirru-edn (format-cirru-edn saved)
                bad? $ ref false
              assert= saved roundtrip
              assert= (:data saved) 42
              assert= (:states saved)
                {} $ 7 $ {} (:data false)
              assert=
                identical? saved $ restore-store saved
                , true
              try
                restore-store $ {}
                  :states $ {}
                  :content 42
                  :data nil
                fn (error) (reset! bad? true)
              assert= @bad? true
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            Store :states ({}) :content | :data nil
          :examples $ []
          :schema $ quote app.schema/Store
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:states cursor s)
                assoc store :states $ decode-map-as
                  respo.cursor/update-state-tree (:states store) cursor s
                  Map Dynamic Dynamic
              (:content data) (assoc store :content data)
              (:data data) (assoc store :data data)
              (:hydrate-storage data) data
              _ $ do (println "|Unknown op:" op) store
          :examples $ []
          :schema $ quote $ Fn app.schema/Store app.schema/Op String Number (-> app.schema/Store)
          :tests $ [] $ %{} 'TestEntry (:name |nominal-store-operations)
            :code $ quote $ let
                initial $ Store :states ({}) :content | :data nil
                content-store $ updater initial (Op :content |hello) |content-op 1
                data-store $ updater content-store
                  Op :data $ {} $ :ok true
                  , |data-op 2
                hydrated $ Store :states ({}) :content |restored :data 42
              assert= (assoc initial :content |hello) content-store
              assert=
                assoc content-store :data $ {} $ :ok true
                , data-store
              assert= hydrated $ updater data-store (Op :hydrate-storage hydrated) |hydrate-op 3
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require
            respo.cursor :refer $ update-states
            app.schema :refer $ Op Store
