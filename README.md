# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------  |
| name               | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| address            | text   | null: false               |
| tel                | string | null: false               |

### Association

- has_many : comments
- has_one  : product

## adminns テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------  |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association

- has_one  : plan


## products テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| maker            | integer    | null: false                    |
| item             | string     | null: false                    |
| battery          | date       | null: false                    |
| user             | references | null: false, foreign_key: true |

### Association

- belongs_to :user

## plans テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| plan            | integer    | null: false                    |
| date            | date       | null: false                    |
| user            | references | null: false, foreign_key: true |


### Association

- belongs_to :user
- belongs_to :adminn
