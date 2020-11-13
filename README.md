#OrderCookについて
###このアプリは「今日の晩ご飯は何がいい？」「何でもいい」を解消するサービスです。

- 問題
作る人目線：何でもいい、が一番困る。料理してるんだから献立を考える手間まで押し付けないで！
してもらう人目線：急に言われても思いつかないよ、、、せめて選択肢が欲しい。

- 解決
作る人に取っても、メニューブックがあれば一から作り方を調べる必要もないし、リピートしてくれて
料理が評価された気分で嬉しい。

こんなよくある悩みを解決するために、メニューリストを作ってその中から選んでもらう機能です。
作る人に取っては、作り方や具材のメモとして機能させることができ、お願いする方も、レストラン
で注文する感覚でリストの中から視覚的に食べたい料理が選択できる。

###実装機能
- ユーザー管理機能
- ルーム機能
- メニュー管理機能


#テーブル設計

##users テーブル

|Column   |  type     | options     |
|---------|-----------|-------------|   
|name     |  string   | null: false |   
|email    |  string   | null: false |   
|password |  string   | null: false |  

###Asociation
- belongs_to :room
- has_many :mens


##rooms テーブル

|Column   |  type         | options                        |
|---------|---------------|--------------------------------|   
|name     |  string       | null: false                    |   
|user     |  references   | null: false, foreign_key: true |   
|room     |  references   | null: false, foreign_key: true |  

###Asociation
- has_many :users
- has_many :menus


##menus テーブル

|Column   |  type         | options                        |
|---------|---------------|--------------------------------|   
|name     |  string       | null: false                    |   
|item     |  text         | null: false                    |   
|cook     |  text         | null: false                    |   
|user     |  references   | null: false, foreign_key: true |   
|room     |  references   | null: false, foreign_key: true |  

###Asociation
- belongs_to :users
- belongs_to :menus