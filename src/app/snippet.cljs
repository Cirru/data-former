
(ns app.snippet )

(defn main! []
  (require '[clojure.string :as string])
  (println (string/join "&&" (range 1000)))
  (.clear js/console)
  (defn f [x y] (* x y))
  [1 2 {:code 1}]
  (println (f 2 4)))
