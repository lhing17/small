(ns generator.core
  (:require [selmer.parser :as parser]
            [clojure.java.io :as jio]))

(defn generator-denom-item [denom]
  (parser/render-file (jio/resource "denom-item.txt")
    denom))

(def denom-items
  [{:id "I000"
    :name "拜入葵花派"
    :description "可习得武功：|n|CFF00FFCC惊涛掌  隔空打穴  龟壳神功|r|n|n门派毕业技|n|CFF00FFCC葵花心法|r|n|n门派附加属性|n|cFF00FF00根骨+3  医术+2|r"
    :art "ReplaceableTextures\\\\CommandButtons\\\\BTN50Icon.blp"}
   ])

(comment
  (print (generator-denom-item {:id "I000"
                         :name "拜入葵花派"
                         :description "可习得武功：|n|CFF00FFCC惊涛掌  隔空打穴  龟壳神功|r|n|n门派毕业技|n|CFF00FFCC葵花心法|r|n|n门派附加属性|n|cFF00FF00根骨+3  医术+2|r"
                         :art "ReplaceableTextures\\\\CommandButtons\\\\BTN50Icon.blp"}))
  ,)
