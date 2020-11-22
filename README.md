# README

# アプリ名
 
俳句の園

# 概要
 
俳句の園は、俳句投稿型のSNSです。  
今の気持ちを五・七・五で表現し、他のユーザーへ共有することができます。    
投稿に対してコメントをしたり、いいねをつけることもできます。  
さぁ、あなたも今すぐ侘び寂びの世界へ！  
  
<img src="https://user-images.githubusercontent.com/56215139/99416311-13afd880-293c-11eb-8003-6f4f55db0e96.jpg" width=30%>  


 
# 本番環境
heroku  
https://haikugarden.herokuapp.com/  

# 制作背景（意図）
教室で学んだ知識をアウトプットするために制作しました。  
ただ、通常のSNS投稿アプリではなく、もうひとつオリジナリティが欲しいと思い、俳句を投稿できるアプリを作ろうと思いました。  
俳句は短い文章で自分の気持ちを伝えるという点でSNSと共通点があり、相性が良いのでは無いかと考えたからです。  
学習したdeviseなどのジェムの他に、bootstorapやslickなど触れたことのない便利な機能も積極的に取り入れるようにしました。  

# DEMO

## トップページ
ホーム画面の真ん中のロゴは、オリジナルで、canvaというロゴを作成できるサービスで作っています。  
上部バナーについては全ページ共通で、すぐに行きたいページにアクセスできるようになっています。  

<a href="https://gyazo.com/6e840c7409428cc6a56f7aeeb8244237"><img src="https://i.gyazo.com/6e840c7409428cc6a56f7aeeb8244237.jpg" alt="Image from Gyazo" width="50%"/></a>

## 新規登録画面
新規登録画面はdeviseで作成しました。上部バナーもしくはサインイン画面のボタンから新規登録画面に飛ぶことができます。  

サインイン  

<a href="https://gyazo.com/a2a371e45d34a1e5f59c650a560aa6c1"><img src="https://i.gyazo.com/a2a371e45d34a1e5f59c650a560aa6c1.png" alt="Image from Gyazo" width="30%"/></a>  
新規登録  

<a href="https://gyazo.com/22ccc2fce3dd1280395b18b95438a9a3"><img src="https://i.gyazo.com/22ccc2fce3dd1280395b18b95438a9a3.png" alt="Image from Gyazo" width="30%"/></a>  


## 投稿画面
画像と、一の句〜三の句を記入します。  
任意でコメントも書き込め、こちらは詳細画面で確認できます。  

<a href="https://gyazo.com/52d225610e2e5b6e1ada9a61002d432e"><img src="https://i.gyazo.com/52d225610e2e5b6e1ada9a61002d432e.jpg" alt="Image from Gyazo" width="50%"/></a>


## 一覧画面
投稿の一覧を確認できます。slickを使いスライドして投稿を閲覧できるようになっています。  
俳句をクリックすると詳細を確認できます。  

![3116f75d77faa276025d52a64732dcf0](https://user-images.githubusercontent.com/56215139/99906535-04090900-2d1b-11eb-8b35-50c8f6281e6d.gif)  

また、過去の投稿に関してはページの下で確認できるようにしています。こちらは投稿時間もしくは、いいねの数でソートできるようになっています。  

<a href="https://gyazo.com/86318b4ba6ae4072ec99016b5aa94952"><img src="https://i.gyazo.com/86318b4ba6ae4072ec99016b5aa94952.png" alt="Image from Gyazo" width="100%"/></a>  

## 詳細画面  

詳細画面では、投稿のより詳しい情報を見ることができます。投稿画面でコメントを入力した場合、こちらに表示されます。また、閲覧者はこちらで投稿にいいねをしたりコメントを残すこともできます。  

<a href="https://gyazo.com/c8ceaa9afb7edbc1b544e14d6fcbb15f"><img src="https://i.gyazo.com/c8ceaa9afb7edbc1b544e14d6fcbb15f.jpg" alt="Image from Gyazo" width="50%"/></a>

コメント機能  
<a href="https://gyazo.com/a58a19d02282c5e579ccc14551fb9d9d"><img src="https://i.gyazo.com/a58a19d02282c5e579ccc14551fb9d9d.png" alt="Image from Gyazo" width="50%"/></a>  



# 工夫したポイント
・俳句ということで和風のイメージを大切にしました。背景は自然の風景、俳句の枠もかるたのようなデザインにし、世界観を壊さないようにしました。  
・SNSは思ったことをすぐに形にできることが大切だと考え、上部にバナーを設けていつでも好きなページに飛べるようにしました。  



# 使用技術（開発環境）

## バックエンド
Ruby,Ruby on Rails
## フロントエンド
HTTP,Sass,JavaScript,JQuery,Ajax
## データベース
PostgreSQL 
## インフラ
heroku
## ソース管理
GitHub, GitHubDesktop
## テスト
RSpec
## エディタ
VSCode

# 課題や今後実装したいこと
・俳句のお題（画像）を投稿できて、他の人がお題に沿って俳句を作っていく機能を作りたい。  
・和風の雰囲気をより強調するため、ビジュアル面を強化したい。 


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


