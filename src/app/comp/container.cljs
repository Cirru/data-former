
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
            ["copy-text-to-clipboard" :as copy!]))

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
      (button
       {:inner-text "Run",
        :style ui/button,
        :on-click (fn [e d! m!] (d! :data (make-string (read-string (:content store)))))})
      (=< 8 nil)
      (button
       {:inner-text "Copy",
        :style ui/button,
        :on-click (fn [e d! m!] (copy! (:data store)))})))
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
