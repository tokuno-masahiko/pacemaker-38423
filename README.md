# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------  |
| name               | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| address            | text   | null: false               |
| tel                | integer| null: false               |

### Association

- has_many : comments
- has_one  : pacemaker

## comments テーブル

| Column    | Type      | Options                        |
| --------- | --------- | ------------------------------ |
| content   | text      | null: false                    |
| user      | reference | null: false, foreign_key: true |

### Association

- belongs_to : user

## pacemakers テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| title            | string     | null: false                    |
| maker            | integer    | null: false                    |
| battery          | date       | null: false                    |
| trouble          | text       | null: false                    |
| user             | references | null: false, foreign_key: true |

### Association

- belongs_to :user

## category テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| genre_id        | integer    | null: false                    |
| user            | references | null: false, foreign_key: true |


### Association

- belongs_to :user
