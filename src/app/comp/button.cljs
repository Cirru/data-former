
(ns app.comp.button
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.core
             :refer
             [defcomp cursor-> action-> mutation-> <> div button textarea span]]
            [respo.comp.space :refer [=<]]
            [app.config :refer [dev?]]
            [cumulo-util.core :refer [delay!]]))

(defcomp
 comp-live-button
 (states text on-click)
 (let [state (or (:data states) {:darken? false})]
   (button
    {:style (merge ui/button (if (:darken? state) {:background-color (hsl 0 0 94)})),
     :inner-text text,
     :on-click (fn [e d! m!]
       (on-click e d! m!)
       (m! (assoc state :darken? true))
       (delay! 0.4 (fn [] (m! (assoc state :darken? false)))))})))
