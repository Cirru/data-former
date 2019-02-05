
(ns app.comp.container
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.core
             :refer
             [defcomp cursor-> action-> mutation-> <> div button textarea span]]
            [respo.comp.space :refer [=<]]
            [reel.comp.reel :refer [comp-reel]]
            [respo-md.comp.md :refer [comp-md]]
            [app.config :refer [dev?]]
            [cirru-sepal.core :refer [make-string]]
            [cljs.reader :refer [read-string]]
            ["copy-text-to-clipboard" :as copy!]
            [app.comp.button :refer [comp-live-button]]))

(defcomp
 comp-container
 (reel)
 (let [store (:store reel), states (:states store)]
   (div
    {:style (merge ui/global ui/fullscreen ui/column)}
    (div
     {:style (merge ui/row-parted {:padding 8})}
     (span {})
     (div
      {}
      (cursor->
       :run
       comp-live-button
       states
       "Run"
       (fn [e d! m!] (d! :data (make-string (read-string (:content store))))))
      (=< 8 nil)
      (cursor-> :copy comp-live-button states "Copy" (fn [e d! m!] (copy! (:data store))))))
    (div
     {:style (merge ui/flex ui/row)}
     (textarea
      {:value (:content store),
       :placeholder "Content",
       :style (merge ui/flex ui/textarea {:font-family ui/font-code}),
       :on-input (action-> :content (:value %e))})
     (textarea
      {:value (:data store),
       :placeholder "data",
       :style (merge ui/flex ui/textarea {:font-family ui/font-code}),
       :on-input (action-> :content (:value %e))}))
    (when dev? (cursor-> :reel comp-reel states reel {})))))
