# README

## users テーブル

| Column             | Type        | Options                   |
| ------------------ | ------      | ------------------------- |
| nickname           | string      | null: false               |
| email              | string      | null: false, unique: true | 
| encrypted_password | string      | null: false               |
| family_name        | string      | null: false               |
| first_name         | string      | null: false               |
| family_name_kana   | string      | null: false               |
| first_name_kana    | string      | null: false               |
| birth_day          | date        | null: false               |


### Association

has_many :items 
has_many :user_items


## destination テーブル

|Column           |	Type        | Options                        |
| --------------- | -------     | ------------------------------ |
|post_code	      | string      |	null: false                    |
|prefecture_id    | integer     |	null: false                    | 
|city_id          | string      |	null: false                    |
|address_id	      | string	    | null: false                    |
|building_name_id | string	    |                                |
|phone_number_id  | string	    | null: false                    |


### Association

belongs_to:user_item


## items テーブル

| Column             | Type        | Options                        |
| ------------------ | ------      | ------------------------------ |
| name               | string      | null: false                    |
| price              | integer     | null: false                    |
| description        | text        | null: false                    |
| status_id          | integer     | null: false                    |
| shipping_cost_id   | integer     | null: false                    |
| shipping_day_id    | integer     | null: false                    |
| prefecture_id      | integer     | null: false                    |
| category_id        | integer     | null: false                    |
| user               | references  | null: false, foreign_key: true |

### Association

has_one :user_item


## user_items テーブル


| Column             | Type        | Options                        |
| ------------------ | ------      | ------------------------------ |
| user            | references  | null: false, foreign_key: true |
| item            | references  | null: false, foreign_key: true |

### Association

belongs_to :user
has_one :destinations
has_one :items


