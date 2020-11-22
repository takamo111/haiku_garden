# README

# アプリ名
 
俳句の園
 
俳句の園は、五七五の俳句形式で今の気持ちを投稿できるアプリです。
投稿に対してコメントをしたり、いいねをつけることもできます。
<img src="https://user-images.githubusercontent.com/56215139/99416311-13afd880-293c-11eb-8003-6f4f55db0e96.jpg" width=50%>
https://i.gyazo.com/d7c5431c810a63393e2c40620e713ab3.jpg
![haiku_garden_logo](https://user-images.githubusercontent.com/56215139/99416311-13afd880-293c-11eb-8003-6f4f55db0e96.jpg)


 
# 概要
 
"hoge"の魅力が直感的に伝えわるデモ動画や図解を載せる
 
# 本番環境
heroku

# 制作背景（意図）
教室で学んだ知識をアウトプットするため、

## 新規登録画面



## 投稿画面
<a href="https://gyazo.com/52d225610e2e5b6e1ada9a61002d432e"><img src="https://i.gyazo.com/52d225610e2e5b6e1ada9a61002d432e.jpg" alt="Image from Gyazo" width="50%"/></a>


## 一覧画面

<a href="https://gyazo.com/2f5e394713c637a227b29b34ba2b22e5"><img src="https://i.gyazo.com/2f5e394713c637a227b29b34ba2b22e5.gif" alt="Image from Gyazo" width="1000"/></a>


slick

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


