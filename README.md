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

## URL: https://baseball-info.herokuapp.com/
## ID: admin
## PASS: 2222
## テストアカウント: baseball@gmail.com
## パスワード: baseball123

# 利用方法

## ヘッダーにあるメッセージ一覧から投稿されているメッセージの一覧ページに移動し気になるメッセージを探すことができます。メッセージ部分をクリックすることで、そのメッセージの詳細ページに移動でき、付随したコメントも見ることができます。また、ニックネーム、メールアドレス、パスワードを設定し、アカウントを登録することで、メッセージ、コメントの投稿が可能になります。そして、気に入った投稿があれば、goodボタンを押すことができます。

# 目指した課題解決

## 野球を上達したい、野球について語りたいという気持ちを持っている人たちに対して、活発に自分の意見や知りたいことを表現でき、情報交換のできる場所として提供したいと考え、このアプリケーションを作成しました。野球界の指導体制は良くも悪くも指導者のいったことが全てというような環境であることがほとんどであり、特に指導される立場の学生にとっては、指導者の意見が正しいかどうかの判断を行うための情報を得る手段がありませんでした。そこで、情報交換を行える場所を目指してこのアプリケーションを作成しました。

# 制作背景

## 学生時代に野球について情報を得ることのできるサービスが欲しいと感じていました。「もっとこうしたら上手くなれるのではないか」「こんな練習を行うと良いのではないか」という思いをぶつけ合える場が、あれば良いと思いました。そこで野球だけに特化した情報交換ができるサービスをWebアプリケーションとして作成することで、全国の人と野球について情報交換でき、野球の上達、向上、発展に繋がると考えました。

# 洗い出した要件

## ユーザー管理機能

#### 目的
#### ユーザー登録機能を実装することで、メッセージの投稿を行えるようにし、また誰が投稿したか、どのメッセージを気に入ったかをユーザーごとに管理できるようにするため
#### 詳細
#### ニックネームとメールアドレス、パスワードを登録することで個別のアカウントを持てる
#### ストーリー
#### ニックネームとメールアドレス、パスワードを登録することで、新規アカウントを作り、メールアドレスとパスワード を入力することでログインできるようになる。また、ユーザーページやユーザ情報の編集、退会機能を実装する
#### 見積もり（所要時間）
#### 10時間

## メッセージ投稿機能
#### 目的
#### ユーザーが自分の主張や意見を投稿できるようにするため
#### 詳細
#### テキスト形式のメッセージを投稿することができ、そのメッセージに対してのジャンルやカテゴリーを設定できる
#### ストーリー
#### テキスト形式のメッセージを作成し、それに世代、ジャンル、体の部位、メッセージカテゴリーを選択し、投稿することができる。また、投稿されたメッセージを閲覧できる
#### 見積もり（所要時間）
#### 8時間

## コメント投稿機能
#### 目的
#### 他のユーザーのメッセージに対して自身の思いや意見などをコメントして、意見交換できるようにするため
#### 詳細
#### 投稿されたメッセージに対して、テキスト形式のコメントを投稿することができる
#### ストーリー
#### 投稿されたメッセージに対してテキスト形式のコメントを投稿できる。また、投稿されたコメントを閲覧できる
#### 見積もり（所要時間）
#### 8時間

## ヘルプフルメッセージ機能
#### 目的
#### ユーザー自身が気に入ったメッセージの投稿に対して評価できるようにするため
#### 詳細
#### 投稿されたメッセージに対して、goodボタンを押すことで評価できる
#### ストーリー
#### 投稿されたメッセージに対して、goodボタンを押すことができる
#### 見積もり（所要時間）
#### 6時間

## ヘルプフルコメント機能
#### 目的
#### ユーザー自身が気に入ったコメントの投稿に対して評価できるようにするため
#### 詳細
#### 投稿されたコメントに対して、goodボタンを押すことで評価できる
#### ストーリー
#### 投稿されたコメントに対して、goodボタンを押すことができる
#### 見積もり（所要時間）
#### 6時間

# DEMO

## ![baseball-info](https://gyazo.com/ace78d04a55e15e1ec5107e66d388458)

# 工夫したポイント

## ユーザーと投稿されたメッセージやコメントを紐付けることで、良い意見を発信するユーザーのメッセージを一覧として確認することができるようにリンクを設定しました。

# 使用技術(開発環境)

## Ruby / Ruby on Rails / MySQL / GitHub / Heroku / Visual Studio Code / Trello


# 課題や今後実装したい機能

## 投稿するメッセージにジャンル分けやタグ付などを行うなど、自分が求めたテーマのメッセージを探しやすいように検索機能を実装していきたい。またコメントにもgoodボタンを押すことができるように実装し、goodボタンを押したメッセージやコメントの一覧をユーザー個人のページに表示されるようにも実装してみたい。

# DB設計

![baseball-info](https://user-images.githubusercontent.com/68838333/93167803-5d255100-f75c-11ea-85d6-4bdc49a954b4.png)

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