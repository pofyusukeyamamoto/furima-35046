# README

## users テーブル

| Column             | Type        | Options     |
| ------------------ | ------      | ----------- |
| nickname           | string      | null: false |
| email              | string      | null: false |
| encrypted_password | string      | null: false |
| user_image         | string      |             |
| introduction       | text        |             |
| family_name        | string      | null: false |
| first_name         | string      | null: false |
| family_name_kana   | string      | null: false |
| first_name_kana    | string      | null: false |
| birth_day          | date        | null: false |


### Association

has_many :items 
belongs_to :destination 
belongs_to :card 


## destination テーブル

|Column           |	Type    | Options                        |
| --------------- | ------- | ------------------------------ |
|user_id          |	integer	| null: false, foreign_key: true |
|family_name      |	string	| null: false                    |
|first_name       |	string	| null: false                    |
|family_name_kana |	string	| null: false                    |
|first_name_kane  |	string	| null: false                    |
|post_code	      | string  |	null: false                    |
|prefecture       | string  |	null: false                    |
|city             | string  |	null: false                    |
|address	        | string	| null: false                    |
|building_name    | string	|                                |
|phone_number     | string	|                                |


### Association

belongs_to :user


## category テーブル

| Column	    | Type	  | Options ---------------------- |
| ----------- | ------- | ------------------------------ |
| name      	| string  | null: false, foreign_key: true |
| ancestry  	| string	|  ----------------------------- |

### Association

has_many :products


## items テーブル

| Column             | Type        | Options                        |
| ------------------ | ------      | ------------------------------ |
| name               | string      | null: false                    |
| price              | string      | null: false                    |
| description        | string      | null: false                    |
| status             | string      | null: false                    |
| shipping_cost      | string      | null: false                    |
| shipping_day       | string      | null: false                    |
| prefecture_id      | string      | null: false                    |
| comment            | string      |                                |
| category_id        | integer     | null: false, foreign_key: true |
| brand_id           | integer     | null: false, foreign_key: true |
| user_id            | integer     | null: false, foreign_key: true |

### Association

belongs_to :user 
belongs_to :category 
has_many :images 
has_many :likes 
has_many :comments
has_one :shipping




## image テーブル

| Column	    | Type	  | Options ---------------------- |
| ----------- | ------- | ------------------------------ |
| image      	| string  | null: false, foreign_key: true |
| item_id     | integer	|  ----------------------------- |

### Association

belongs_to :item


## brandテーブル

| Column	    | Type	  | Options ---------------------- |
| ----------- | ------- | ------------------------------ |
| name      	| string  | index: true ------------------ |

### Association

has_many :item
