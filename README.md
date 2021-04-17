# README

## users テーブル

| Column             | Type        | Options      |
| ------------------ | ------      | -----------  |
| nickname           | string      | null: false  |
| email              | string      | unique: true | 
| encrypted_password | string      | null: false  |
| family_name        | string      | null: false  |
| first_name         | string      | null: false  |
| family_name_kana   | string      | null: false  |
| first_name_kana    | string      | null: false  |
| birth_day          | date        | null: false  |


### Association

has_many :items 
has_many :user_items


## destination テーブル

|Column           |	Type        | Options                        |
| --------------- | -------     | ------------------------------ |
|post_code	      | string      |	null: false                    |
|prefecture_id    | integer     |	null: false                    | 
|city             | string      |	null: false                    |
|address	        | string	    | null: false                    |
|building_name    | string	    |                                |
|phone_number     | string	    | null: false                    |


### Association

belongs_to :user
has_many :items
has_one :user_item


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

belongs_to :user 
has_one :destination
has_one :user_item


## user_items テーブル

=> user_id, item_id を保存できればOK

| Column             | Type        | Options                        |
| ------------------ | ------      | ------------------------------ |
| user_id            | references  | null: false, foreign_key: true |
| item_id            | references  | null: false, foreign_key: true |

has_one :destinations


