# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
  ruby 2.5.1

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* 

## itemテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|image|string||
|text|string||
|nickname|string||
|likes|integer||
|bads|integer||
### Association
- has_many :comments


## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|encrypted_password|strig|null: false|
|reset_password_token|string||
|first_name_kana|string||
|reset_password_sent_at|datatime||
|remember_created_at|datatime||




## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|item_id|integer||
|comment_nickname|string|null: false|
|comment|text|null: false|
|likes|integer||
|bads|integer||
### Association
- belongs_to :item


