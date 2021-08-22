
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |cumulo-util.calcit/
    :version nil
  :files $ {}
    |app.comp.button $ {}
      :ns $ quote
        ns app.comp.button $ :require
          [] respo-ui.core :refer $ [] hsl
          [] respo-ui.core :as ui
          [] respo.core :refer $ [] defcomp >> <> div button textarea span
          [] respo.comp.space :refer $ [] =<
          [] app.config :refer $ [] dev?
          [] cumulo-util.core :refer $ [] delay!
      :defs $ {}
        |comp-live-button $ quote
          defcomp comp-live-button (states text on-click)
            let
                cursor $ :cursor states
                state $ or (:data states)
                  {} $ :darken? false
              button $ {}
                :style $ merge ui/button
                  if (:darken? state)
                    {} $ :background-color (hsl 0 0 94)
                :inner-text text
                :on-click $ fn (e d!) (on-click e d!)
                  d! cursor $ assoc state :darken? true
                  delay! 0.4 $ fn ()
                    d! cursor $ assoc state :darken? false
    |app.comp.container $ {}
      :ns $ quote
        ns app.comp.container $ :require
          [] respo-ui.core :refer $ [] hsl
          [] respo-ui.core :as ui
          [] respo.core :refer $ [] defcomp >> <> div button textarea span
          [] respo.comp.space :refer $ [] =<
          [] reel.comp.reel :refer $ [] comp-reel
          [] respo-md.comp.md :refer $ [] comp-md
          [] app.config :refer $ [] dev?
          [] "\"copy-text-to-clipboard" :default copy!
          [] app.comp.button :refer $ [] comp-live-button
      :defs $ {}
        |comp-container $ quote
          defcomp comp-container (reel)
            let
                store $ :store reel
                states $ :states store
              div
                {} $ :style (merge ui/global ui/fullscreen ui/column)
                div
                  {} $ :style
                    merge ui/row-parted $ {} (:padding 8)
                  span $ {}
                  div ({})
                    comp-live-button (>> states :run) "\"Run" $ fn (e d!)
                      d! :data $ format-to-lisp
                        parse-cirru-edn $ :content store
                    =< 8 nil
                    comp-live-button (>> states :copy) "\"Copy" $ fn (e d!)
                      copy! $ :data store
                div
                  {} $ :style (merge ui/flex ui/row)
                  textarea $ {}
                    :value $ :content store
                    :placeholder |Content
                    :style $ merge ui/flex ui/textarea
                      {} $ :font-family ui/font-code
                    :on-input $ fn (e d!)
                      d! :content $ :value e
                  textarea $ {}
                    :value $ :data store
                    :placeholder "\"data"
                    :style $ merge ui/flex ui/textarea
                      {} $ :font-family ui/font-code
                    :on-input $ fn (e d!)
                      d! :content $ :value e
                when dev? $ comp-reel (>> states :reel) reel ({})
    |app.schema $ {}
      :ns $ quote (ns app.schema)
      :defs $ {}
        |store $ quote
          def store $ {}
            :states $ {}
            :content "\""
            :data nil
    |app.updater $ {}
      :ns $ quote
        ns app.updater $ :require
          [] respo.cursor :refer $ [] update-states
      :defs $ {}
        |updater $ quote
          defn updater (store op op-data op-id op-time)
            case-default op
              do (println "\"Unkown op:" op) store
              :states $ update-states store op-data
              :content $ assoc store :content op-data
              :data $ assoc store :data op-data
              :hydrate-storage op-data
    |app.main $ {}
      :ns $ quote
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
          [] cumulo-util.core :refer $ [] repeat!
          "\"./calcit.build-errors" :default build-errors
          "\"bottom-tip" :default hud!
      :defs $ {}
        |render-app! $ quote
          defn render-app! () $ render! mount-target (comp-container @*reel) dispatch!
        |persist-storage! $ quote
          defn persist-storage! (? e)
            .setItem js/localStorage (:storage-key config/site)
              format-cirru-edn $ :store @*reel
        |mount-target $ quote
          def mount-target $ .querySelector js/document |.app
        |*reel $ quote
          defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |main! $ quote
          defn main! ()
            println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
            render-app!
            add-watch *reel :changes $ fn (r p) (render-app!)
            listen-devtools! |a dispatch!
            .addEventListener js/window |beforeunload persist-storage!
            repeat! 60 persist-storage!
            let
                raw $ .getItem js/localStorage (:storage-key config/site)
              when (some? raw)
                dispatch! :hydrate-storage $ parse-cirru-edn raw
            println "|App started."
        |dispatch! $ quote
          defn dispatch! (op op-data)
            when config/dev? $ println "\"Dispatch:" op
            reset! *reel $ reel-updater updater @*reel op op-data
        |reload! $ quote
          defn reload! () $ if (nil? build-errors)
            do (remove-watch *reel :changes) (clear-cache!)
              add-watch *reel :changes $ fn (reel prev) (render-app!)
              reset! *reel $ refresh-reel @*reel schema/store updater
              hud! "\"ok~" "\"Ok"
            hud! "\"error" build-errors
    |app.config $ {}
      :ns $ quote (ns app.config)
      :defs $ {}
        |cdn? $ quote
          def cdn? $ cond
              exists? js/window
              , false
            (exists? js/process) (= "\"true" js/process.env.cdn)
            :else false
        |dev? $ quote
          def dev? $ = "\"dev" (get-env "\"mode")
        |site $ quote
          def site $ {} (:dev-ui "\"http://localhost:8100/main.css") (:release-ui "\"http://cdn.tiye.me/favored-fonts/main.css") (:cdn-url "\"http://cdn.tiye.me/data-former/") (:cdn-folder "\"tiye.me:cdn/data-former") (:title "\"Data former") (:icon "\"http://cdn.tiye.me/logo/cirru.png") (:storage-key "\"data-former") (:upload-folder "\"tiye.me:repo/Cirru/data-former/")
