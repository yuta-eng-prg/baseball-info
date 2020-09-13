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

# 概要(このアプリでできることを書いて下さい)

##

# 本番環境(デプロイ先　テストアカウント＆ID)

##

# 制作背景(意図)⇒どんな課題や不便なことを解決するためにこのアプリを作ったのか。

##

# DEMO(gifで動画や写真を貼って、ビューのイメージを掴んでもらいます)⇒特に、デプロイがまだできていない場合はDEMOをつけることで見た目を企業側に伝えることができます。

##

# 工夫したポイント

##

# 使用技術(開発環境)

##

# 課題や今後実装したい機能

##

# DB設計

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