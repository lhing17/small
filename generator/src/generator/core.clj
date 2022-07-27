(ns generator.core
  (:require [selmer.parser :as parser]
            [clojure.java.io :as jio]
            [clojure.string :as str]))

(defn generator-denom-item [denom]
  (parser/render-file (jio/resource "denom-item.txt")
                      denom))

(def denom-items
  [{:id          "I000"
    :name        "拜入葵花派"
    :description "可习得武功：|n|CFF00FFCC惊涛掌  隔空打穴  龟壳神功|r|n|n门派毕业技|n|CFF00FFCC葵花心法|r|n|n门派附加属性|n|cFF00FF00根骨+3 医术+2|r"
    :art         "ReplaceableTextures\\\\CommandButtons\\\\BTNkuihua.blp"}
   {:id          "I001"
    :name        "拜入巨鲸帮"
    :description "可习得武功：|n|CFF00FFCC鲸涛阵  鲸水拳  骇浪掌|r|n|n门派毕业技|n|CFF00FFCC叠浪诀|r|n|n门派附加属性|n|cFF00FF00悟性+1 根骨+2 福缘+2|r"
    :art         "ReplaceableTextures\\\\CommandButtons\\\\BTNjujing.blp"}
    {:id          "I002"
    :name        "拜入天鹰教"
    :description "可习得武功：|n|CFF00FFCC天鹰剑法  大力鹰爪功  天鹰罡擒|r|n|n门派毕业技|n|CFF00FFCC飞扬跋扈|r|n|n门派附加属性|n|cFF00FF00悟性+2 根骨+2 医术+1|r"
    :art         "ReplaceableTextures\\\\CommandButtons\\\\BTNtianying.blp"}
    {:id          "I003"
    :name        "拜入清凉寺"
    :description "可习得武功：|n|CFF00FFCC金刚指  拈花指  清凉拳|r|n|n门派毕业技|n|CFF00FFCC清凉罗汉功|r|n|n门派附加属性|n|cFF00FF00悟性+3 医术+2|r"
    :art         "ReplaceableTextures\\\\CommandButtons\\\\BTNqingliang.blp"}
    {:id          "I004"
    :name        "拜入飞马镖局"
    :description "可习得武功：|n|CFF00FFCC飞马拳  飞马腿  百胜神拳|r|n|n门派毕业技|n|CFF00FFCC飞马罗汉功|r|n|n门派附加属性|n|cFF00FF00悟性+2 福缘+3|r"
    :art         "ReplaceableTextures\\\\CommandButtons\\\\BTNfeima.blp"}
    {:id          "I005"
    :name        "拜入陆家庄"
    :description "可习得武功：|n|CFF00FFCC韦陀棍法  桃花阵  玉箫剑法|r|n|n门派毕业技|n|CFF00FFCC奇门术数|r|n|n门派附加属性|n|cFF00FF00悟性+4 医术+1|r"
    :art         "ReplaceableTextures\\\\CommandButtons\\\\BTNlujia.blp"}
    {:id          "I006"
    :name        "拜入金刀寨"
    :description "可习得武功：|n|CFF00FFCC青龙刀  八刀藏刀  白虹贯日|r|n|n门派毕业技|n|CFF00FFCC金刀心法|r|n|n门派附加属性|n|cFF00FF00根骨+2 医术+1 福缘+2|r"
    :art         "ReplaceableTextures\\\\CommandButtons\\\\BTNjindao.blp"}
    {:id          "I007"
    :name        "拜入天地会"
    :description "可习得武功：|n|CFF00FFCC凝血神抓  巫家拳  高山流水|r|n|n门派毕业技|n|CFF00FFCC地振高冈|r|n|n门派附加属性|n|cFF00FF00根骨+2 福缘+3|r"
    :art         "ReplaceableTextures\\\\CommandButtons\\\\BTNtiandi.blp"}
   ])

(defn -main [& args]
  (spit "a.out" (str/join "\n" (map generator-denom-item denom-items))))

(comment
  (print (generator-denom-item {:id          "I000"
                                :name        "拜入葵花派"
                                :description "可习得武功：|n|CFF00FFCC惊涛掌  隔空打穴  龟壳神功|r|n|n门派毕业技|n|CFF00FFCC葵花心法|r|n|n门派附加属性|n|cFF00FF00根骨+3  医术+2|r"
                                :art         "ReplaceableTextures\\\\CommandButtons\\\\BTNkuihua.blp"})),)
