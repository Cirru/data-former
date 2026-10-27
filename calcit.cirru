
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |reel.calcit/ |js-ffi/
      :type-slots $ {} $ :dispatch-op |app.schema/Op
  :files $ {}
    'app.comp.button $ %{} 'FileEntry
      :defs $ {} $ 'comp-live-button
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-live-button (states text on-click)
            let
                cursor $ decode-map-as
                    get states :cursor
                    , .unwrap-or $ []
                  :: 'List 'Dynamic
                state $
                  get states :data
                  , .unwrap-or $ {} (:darken? false)
              button $ {}
                :style $ merge ui/button $ assert-type
                  if
                      get state :darken?
                      , .unwrap-or false
                    {} $ :background-color $ hsl 0 0 94
                    {}
                  :: 'Map 'Tag 'Dynamic
                :inner-text text
                :on-click $ fn (e d!)
                  hint-fn $ {}
                    :args $ [] (:: 'Map 'Tag 'Dynamic)
                      :: 'Fn $ {}
                        :args $ [] 'app.schema/Op
                        :return 'Unit
                    :return 'Unit
                  on-click e d!
                  d! $ Op :states cursor $ assoc state :darken? true
                  browser/set-timeout!
                    fn () $ d! $ Op :states cursor (assoc state :darken? false)
                    , 400
                  , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'Map 'Dynamic 'Dynamic) 'String 'respo.schema/EventHandler
            :features $ #{} :js-ffi
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
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel)
            let
                store $ app.schema/restore-store $
                  get reel :store
                  , .unwrap
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
                      d! $ Op :data $ format-to-lisp (parse-cirru-edn content)
                    =< 8 nil
                    comp-live-button (>> states :copy) |Copy $ fn (e d!)
                      copy! $ scalar-copy-text data
                      , &unit
                div
                  {} $ :style $ merge ui/flex ui/row
                  textarea $ {} (:value content) (:placeholder |Content)
                    :style $ merge (merge ui/flex ui/textarea)
                      {} $ :font-family ui/font-code
                    :on-input $ fn (e d!)
                      d! $ Op :content $ decode-map-as
                          get e :value
                          , .unwrap-or |
                        , 'String
                  textarea $ {} (:value data) (:placeholder |data)
                    :style $ merge (merge ui/flex ui/textarea)
                      {} $ :font-family ui/font-code
                    :on-input $ fn (e d!)
                      d! $ Op :data $
                        get e :value
                        , .unwrap-or |
                when dev? $ comp-reel (>> states :reel) reel $ {}
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
        'scalar-copy-text $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn scalar-copy-text (value)
            cond
                nil? value
                , |
              (string? value) value
              (number? value) (to-string value)
              (bool? value) (to-string value)
              (tag? value) (to-string value)
              (symbol? value) (to-string value)
              true $ raise "|Only scalar data can be copied"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'T
            :generics $ [] 'T
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp >> <> div button textarea span
            respo.comp.space :refer $ =<
            reel.comp.reel :refer $ comp-reel
            app.config :refer $ dev?
            |copy-text-to-clipboard :default copy!
            app.comp.button :refer $ comp-live-button
            app.schema :refer $ Op Store
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'cdn? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def cdn? (detect-cdn?)
          :examples $ []
          :schema $ :: 'Bool
        'detect-cdn? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn detect-cdn? ()
            hint-fn $ {}
              :args $ []
              :return 'Bool
              :features $ #{} :js-ffi
            cond
                exists? js/window
                , false
              (exists? js/process)
                = |true $
                  get-env |cdn
                  , .unwrap-or |false
              true false
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ []
            :features $ #{} :js-ffi
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $
              get-env |mode
              , .unwrap-or |release
          :examples $ []
          :schema $ :: 'Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} (:dev-ui |http://localhost:8100/main.css) (:release-ui |http://cdn.tiye.me/favored-fonts/main.css) (:cdn-url |http://cdn.tiye.me/data-former/) (:cdn-folder |tiye.me:cdn/data-former) (:title "|Data former") (:icon |http://cdn.tiye.me/logo/cirru.png) (:storage-key |data-former) (:upload-folder |tiye.me:repo/Cirru/data-former/)
          :examples $ []
          :schema $ :: 'Map 'Tag 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel
            -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'Tag 'Dynamic
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when config/dev? $ println |Dispatch: op
            reset! *reel $ reel-updater
              fn (saved operation op-id op-time)
                updater (schema/restore-store saved) (decode-map-as operation 'app.schema/Op) (decode-map-as op-id 'String) (decode-map-as op-time 'Number)
              , @*reel op
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'app.schema/Op
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
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn mount-target ()
            respo-browser/narrow-element $
              browser/query-selector |.app
              , .unwrap
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.dom/DomElement)
            :args $ []
            :features $ #{} :js-ffi
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            let
                reel-value @*reel
                store $ schema/restore-store $
                  get reel-value :store
                  , .unwrap
              browser/storage-set!
                  get config/site :storage-key
                  , .unwrap-or |data-former
                format-cirru-edn store
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch! *reel :changes) (clear-cache!)
                add-watch! *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ decode-map-as (refresh-reel @*reel schema/store updater) (:: 'Map 'Tag 'Dynamic)
                hud! |ok~ |Ok
              hud! |error build-errors
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render! (mount-target) (comp-container @*reel) dispatch!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            respo.core :refer $ render! clear-cache! realize-ssr!
            app.comp.container :refer $ comp-container
            app.updater :refer $ updater
            app.schema :as schema
            reel.util :refer $ listen-devtools!
            reel.core :refer $ reel-updater refresh-reel
            reel.schema :as reel-schema
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
            :states (:: 'List 'Dynamic) 'Dynamic
            :content 'String
            :data 'Dynamic
            :hydrate-storage 'app.schema/Store
          :examples $ []
          :schema $ :: 'EnumDef
        'Store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Store
            :states $ :: 'Map 'Dynamic 'Dynamic
            :content 'String
            :data 'Dynamic
          :examples $ []
          :schema $ :: 'StructDef
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
          :schema $ :: 'Fn $ {} (:return 'app.schema/Store)
            :args $ [] 'T
            :generics $ [] 'T
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
          :schema $ :: 'app.schema/Store
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
                  :: 'Map 'Dynamic 'Dynamic
              (:content data) (assoc store :content data)
              (:data data) (assoc store :data data)
              (:hydrate-storage data) data
              _ $ do (println "|Unknown op:" op) store
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Store)
            :args $ [] 'app.schema/Store 'app.schema/Op 'String 'Number
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
