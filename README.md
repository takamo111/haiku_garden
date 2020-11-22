# README

# アプリ名
 
俳句の園
 
俳句の園は、五七五の俳句形式で今の気持ちを投稿できるアプリです。  
投稿に対してコメントをしたり、いいねをつけることもできます。  
<img src="https://user-images.githubusercontent.com/56215139/99416311-13afd880-293c-11eb-8003-6f4f55db0e96.jpg" width=30%>  


 
# 概要
 
"hoge"の魅力が直感的に伝えわるデモ動画や図解を載せる
 
# 本番環境
heroku

# 制作背景（意図）
教室で学んだ知識をアウトプットするため、

## 新規登録画面
新規登録画面は、deviseで作成しました。上部バナーもしくはサインイン画面のボタンから新規登録画面に飛ぶことができます。  
サインイン  
<a href="https://gyazo.com/a2a371e45d34a1e5f59c650a560aa6c1"><img src="https://i.gyazo.com/a2a371e45d34a1e5f59c650a560aa6c1.png" alt="Image from Gyazo" width="30%"/></a>  
新規登録  
<a href="https://gyazo.com/22ccc2fce3dd1280395b18b95438a9a3"><img src="https://i.gyazo.com/22ccc2fce3dd1280395b18b95438a9a3.png" alt="Image from Gyazo" width="30%/></a>  


## ホーム、上部バナー
ホーム画面の真ん中のロゴは、オリジナルで、canvaというロゴを作成できるサービスで作っています。
上部バナーについては全ページ共通で、すぐに行きたいページにアクセスできるようになっています。
<a href="https://gyazo.com/6e840c7409428cc6a56f7aeeb8244237"><img src="https://i.gyazo.com/6e840c7409428cc6a56f7aeeb8244237.jpg" alt="Image from Gyazo" width="50%"/></a>

## 投稿画面
画像と、一の句〜三の句を記入します。
任意でコメントも書き込め、こちらは詳細画面で確認できます。

<a href="https://gyazo.com/52d225610e2e5b6e1ada9a61002d432e"><img src="https://i.gyazo.com/52d225610e2e5b6e1ada9a61002d432e.jpg" alt="Image from Gyazo" width="50%"/></a>


## 一覧画面
投稿の一覧を確認できます。slickを使いスライドして投稿を閲覧できるようになっています。
俳句をクリックすると詳細を確認できます。
<a href="https://gyazo.com/2f5e394713c637a227b29b34ba2b22e5"><img src="https://i.gyazo.com/2f5e394713c637a227b29b34ba2b22e5.gif" alt="Image from Gyazo" width="50%"/></a>

また、過去の投稿に関してはページの下で確認できるようにしています。こちらは投稿時間もしくは、いいねの数でソートできるようになっています。
<a href="https://gyazo.com/86318b4ba6ae4072ec99016b5aa94952"><img src="https://i.gyazo.com/86318b4ba6ae4072ec99016b5aa94952.png" alt="Image from Gyazo" width="50%"/></a>



詳細画面
詳細画面では、投稿のより詳しい情報を見ることができます。投稿画面でコメントを入力した場合、こちらに表示されます。
また、閲覧者はこちらで投稿にいいねをしたりコメントを残すこともできます。
<a href="https://gyazo.com/c8ceaa9afb7edbc1b544e14d6fcbb15f"><img src="https://i.gyazo.com/c8ceaa9afb7edbc1b544e14d6fcbb15f.jpg" alt="Image from Gyazo" width="50%"/></a>


コメント機能
<a href="https://gyazo.com/a58a19d02282c5e579ccc14551fb9d9d"><img src="https://i.gyazo.com/a58a19d02282c5e579ccc14551fb9d9d.png" alt="Image from Gyazo" width="50%"/></a>



# 工夫したポイント




# 使用技術（開発環境）

## バックエンド
Ruby,Ruby on Rails
## フロントエンド
HTTP,Sass,JavaScript,JQuery
## データベース
PostgreSQL 
## インフラ
heroku
## Webサーバ

## アプリケーションサーバ

## ソース管理
GitHub, GitHubDesktop
## テスト
RSpec
## エディタ
VSCode
 


# 課題や今後実装したいこと
他の人が投稿したお題に対して俳句を投稿できたら面白いと思っています

 
# Requirement
 
"hoge"を動かすのに必要なライブラリなどを列挙する
 
* huga 3.5.2
* hogehuga 1.0.2
 
# Installation
 
Requirementで列挙したライブラリなどのインストール方法を説明する
 
```bash
pip install huga_package
```
 
# Usage
 
DEMOの実行方法など、"hoge"の基本的な使い方を説明する
 
```bash
git clone https://github.com/hoge/~
cd examples
python demo.py
```
 
# Note
 
注意点などがあれば書く
 
# Author
 
作成情報を列挙する
 
* 作成者
* 所属
* E-mail
 
# License
ライセンスを明示する
 
"hoge" is under [MIT license](https://en.wikipedia.org/wiki/MIT_License).
 
社内向けなら社外秘であることを明示してる
 
"hoge" is Confidential.



## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|

### Association
- has_many :tweets
- has_many :likes
- has_many :comments

## tweetsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|image|string|null: false|
|thirdphrase|string|null: false|
|secondphrase|string|null: false|
|firstphrase|string|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- has_many :likes
- has_many :comments

## commentsテーブル

|Column|Type|Options|
|------|----|-------|
|content|string|null: false|
|tweet_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :tweet


## likesテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|tweet_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :tweet


