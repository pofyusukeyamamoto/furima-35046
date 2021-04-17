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
belongs_to :destination 


## destination テーブル

|Column           |	Type        | Options                        |
| --------------- | -------     | ------------------------------ |
|user_id          |	references	| null: false, foreign_key: true |
|post_code	      | string      |	null: false                    |
|prefecture_id    | integer     |	null: false                    | 
|city             | string      |	null: false                    |
|address	        | string	    | null: false                    |
|building_name    | string	    |                                |
|phone_number     | string	    | null: false                    |


### Association

belongs_to :user
has many :items


## items テーブル

| Column             | Type        | Options                        |
| ------------------ | ------      | ------------------------------ |
| name               | string      | null: false                    |
| price              | integer     | null: false                    |
| description        | text        | null: false                    |
| status_id          | string      | null: false                    |
| shipping_cost_id   | string      | null: false                    |
| shipping_day_id    | string      | null: false                    |
| prefecture_id      | string      | null: false                    |
| category_id        | integer     | null: false, foreign_key: true |
| user_id            | integer     | null: false, foreign_key: true |

### Association

belongs_to :user 
has_one :destination




