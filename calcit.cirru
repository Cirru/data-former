
{} (:about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --full` first. Manual edits must follow format and schema conventions, then run `calcit edit format`.") (:package |app)
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'app.main/main!) (:mode :native) (:reload-fn 'app.main/reload!)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/
      :type-slots $ {}
  :files $ {}
    'app.comp.button $ %{} 'FileEntry
      :defs $ {}
        'comp-live-button $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-live-button (states text on-click)
              let
                  cursor $
                    get states :cursor
                    , .unwrap-or ([])
                  state $
                    get states :data
                    , .unwrap-or
                      {} $ :darken? false
                button $ {}
                  :style $ merge (unsafe-coerce ui/button Dynamic)
                    if
                        get state :darken?
                        , .unwrap-or false
                      {} $ :background-color (hsl 0 0 94)
                      {}
                  :inner-text text
                  :on-click $ fn (e d!) (on-click e d!)
                    d! cursor $ assoc state :darken? true
                    js/setTimeout
                      fn () $ d! cursor (assoc state :darken? false)
                      , 400
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.button $ :require
            [] respo-ui.core :refer $ [] hsl
            [] respo-ui.core :as ui
            [] respo.core :refer $ [] defcomp >> <> div button textarea span
            [] respo.comp.space :refer $ [] =<
            [] app.config :refer $ [] dev?
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-container (reel)
              let
                  store $
                    get (unsafe-coerce reel Dynamic) :store
                    , .unwrap-or ({})
                  states $
                    get store :states
                    , .unwrap-or ({})
                  content $
                    get store :content
                    , .unwrap-or |
                  data $
                    get store :data
                    , .unwrap-or nil
                div
                  {} $ :style (merge ui/global ui/fullscreen ui/column)
                  div
                    {} $ :style
                      merge (unsafe-coerce ui/row-parted Dynamic)
                        {} $ :padding 8
                    span $ {}
                    div ({})
                      comp-live-button (>> states :run) |Run $ fn (e d!)
                        d! :data $ format-to-lisp (parse-cirru-edn content)
                      =< 8 nil
                      comp-live-button (>> states :copy) |Copy $ fn (e d!)
                        copy! $ turn-string data
                  div
                    {} $ :style
                      merge (unsafe-coerce ui/flex Dynamic) ui/row
                    textarea $ {} (:value content) (:placeholder |Content)
                      :style $ merge
                        merge (unsafe-coerce ui/flex Dynamic) ui/textarea
                        {} $ :font-family ui/font-code
                      :on-input $ fn (e d!)
                        d! :content $
                          get e :value
                          , .unwrap-or |
                    textarea $ {} (:value data) (:placeholder |data)
                      :style $ merge
                        merge (unsafe-coerce ui/flex Dynamic) ui/textarea
                        {} $ :font-family ui/font-code
                      :on-input $ fn (e d!)
                        d! :content $
                          get e :value
                          , .unwrap-or |
                  when dev? $ comp-reel (>> states :reel) reel ({})
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.container $ :require
            [] respo-ui.core :refer $ [] hsl
            [] respo-ui.core :as ui
            [] respo.core :refer $ [] defcomp >> <> div button textarea span
            [] respo.comp.space :refer $ [] =<
            [] reel.comp.reel :refer $ [] comp-reel
            [] respo-md.comp.md :refer $ [] comp-md
            [] app.config :refer $ [] dev?
            [] |copy-text-to-clipboard :default copy!
            [] app.comp.button :refer $ [] comp-live-button
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'cdn? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def cdn? $ cond
                exists? js/window
                , false
              (exists? js/process) (= |true js/process.env.cdn)
              :else false
          :examples $ []
          :schema $ :: 'Dynamic
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def dev? $ = |dev
              (get-env |mode) .unwrap-or |release
          :examples $ []
          :schema $ :: 'Dynamic
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def site $ {} (:dev-ui |http://localhost:8100/main.css) (:release-ui |http://cdn.tiye.me/favored-fonts/main.css) (:cdn-url |http://cdn.tiye.me/data-former/) (:cdn-folder |tiye.me:cdn/data-former) (:title "|Data former") (:icon |http://cdn.tiye.me/logo/cirru.png) (:storage-key |data-former) (:upload-folder |tiye.me:repo/Cirru/data-former/)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns app.config)
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
          :examples $ []
          :schema $ :: 'Dynamic
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op)
              when config/dev? $ println |Dispatch: op
              reset! *reel $ reel-updater updater @*reel op
          :examples $ []
          :schema $ :: 'Dynamic
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              println "|Running mode:" $ if config/dev? |dev |release
              render-app!
              add-watch *reel :changes $ fn (r p) (render-app!)
              listen-devtools! |a dispatch!
              .?!addEventListener js/window |beforeunload persist-storage!
              js/setInterval persist-storage! 60000
              let
                  raw $ .?!getItem js/localStorage
                    (get config/site :storage-key) .unwrap-or |data-former
                when (js-present? raw)
                  dispatch! $ :: :hydrate-storage
                    parse-cirru-edn $ unsafe-coerce raw String
              println "|App started."
          :examples $ []
          :schema $ :: 'Dynamic
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def mount-target $ .querySelector js/document |.app
          :examples $ []
          :schema $ :: 'Dynamic
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn persist-storage! (? e)
              .?!setItem js/localStorage
                (get config/site :storage-key) .unwrap-or |data-former
                format-cirru-edn $
                  get (unsafe-coerce @*reel Dynamic) :store
                  , .unwrap-or ({})
          :examples $ []
          :schema $ :: 'Dynamic
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ if (nil? build-errors)
              do (remove-watch *reel :changes) (clear-cache!)
                add-watch *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ refresh-reel @*reel schema/store updater
                hud! |ok~ |Ok
              hud! |error build-errors
          :examples $ []
          :schema $ :: 'Dynamic
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn render-app! () $ render! mount-target (comp-container @*reel) dispatch!
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.main $ :require
            [] respo.core :refer $ [] render! clear-cache! realize-ssr!
            [] app.comp.container :refer $ [] comp-container
            [] app.updater :refer $ [] updater
            [] app.schema :as schema
            [] reel.util :refer $ [] listen-devtools!
            [] reel.core :refer $ [] reel-updater refresh-reel
            [] reel.schema :as reel-schema
            [] cljs.reader :refer $ [] read-string
            [] app.config :as config
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def store $ {}
              :states $ {}
              :content |
              :data nil
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns app.schema)
    'app.updater $ %{} 'FileEntry
      :defs $ {}
        'updater $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn updater (store op op-id op-time)
              match op
                (:states cursor s) (update-states store cursor s)
                (:content data) (assoc store :content data)
                (:data data) (assoc store :data data)
                (:hydrate-storage data) data
                _ $ do (println "|Unkown op:" op) store
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.updater $ :require
            [] respo.cursor :refer $ [] update-states
