# README

<!-- This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ... -->

# アプリ名

## baseball-info

# 概要

## 野球に関してのメッセージの閲覧、投稿を行えるアプリケーションを作成しました。投稿されたメッセージを閲覧することができ、ユーザーを登録するとメッセージを投稿することができるようになります。また、投稿されたメッセージにコメントすることもできるようになります。そして、自身のユーザー情報、投稿したメッセージ、コメントの編集と削除をすることができます。他にも、気に入ったメッセージに対して、goodボタンを押すことができます。

# 本番環境(デプロイ先 テストアカウント＆ID)

## URL:
## ID:
## PASS:
## テストアカウント:

# 制作背景(意図)⇒どんな課題や不便なことを解決するためにこのアプリを作ったのか。

## 学生時代に野球について情報を得ることのできるサービスが欲しいと感じていました。「もっとこうしたら上手くなれるのではないか」「こんな練習を行うと良いのではないか」という思いをぶつけ合える場が、あれば良いと思いました。そこで野球だけに特化した情報交換ができるサービスをWebアプリケーションとして作成することで、全国の人と野球について情報交換でき、野球の上達、向上、発展に繋がると考えました。

# DEMO(gifで動画や写真を貼って、ビューのイメージを掴んでもらいます)⇒特に、デプロイがまだできていない場合はDEMOをつけることで見た目を企業側に伝えることができます。

##

# 工夫したポイント

## ユーザーと投稿されたメッセージやコメントを紐付けることで、良い意見を発信するユーザーのメッセージを一覧として確認することができるようにリンクを設定しました。

# 使用技術(開発環境)

## Ruby / Ruby on Rails / MySQL / GitHub / Heroku / Visual Studio Code / Trello


# 課題や今後実装したい機能

## 投稿するメッセージにジャンル分けやタグ付などを行うなど、自分が求めたテーマのメッセージを探しやすいように検索機能を実装していきたい。またコメントにもgoodボタンを押すことができるように実装し、goodボタンを押したメッセージやコメントの一覧をユーザー個人のページに表示されるようにも実装してみたい。

# DB設計

![ER（basebsll-info)](https://user-images.githubusercontent.com/68838333/93045457-33075c80-f692-11ea-9c91-7e459dc6c6e2.jpg)

# テーブル設計

## users テーブル
| Column          | Type      | Options                   |
| --------------- | --------- | ------------------------- |
| nickname        | string    | null: false, unique: true |
| email           | string    | null: false, unique: true |
| password        | string    | null: false               |

### Association

- has_many :messages
- has_many :comments
- has_many :helpful_messages
- has_many :helpful_comments

## messages テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| content       | text       | null: false                    |
| generation_id | integer    | null: false                    |
| genre_id      | integer    | null: false                    |
| body_parts_id | integer    | null: false                    |
| category_id   | integer    | null: false                    |
| user          | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :comments
- has_many :helpful_messages

## comments テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| comment | text       | null: false                    |
| user    | references | null: false, foreign_key: true |
| message | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :message
- has_many :helpful_comments

## helpful_messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user    | references | null: false, foreign_key: true |
| message | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :message

## helpful_comments テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user    | references | null: false, foreign_key: true |
| comment | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :comment