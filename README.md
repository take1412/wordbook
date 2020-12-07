## Usersテーブル

| Column             | Type   | Option      |
| ------------------ | ------ | ----------- |
| email              | string | null: false |
| encrypted_password | string | null: false |
| nickname           | string | null: false |

## Association
- has_many :wordbooks
- has_many :words


## Wordbooksテーブル

| Column      | Type       | Option      |
| ----------- | ---------- | ----------- |
| bookname    | string     | null: false |
| text        | text       | null: false |
| release_id  | integer    | null: false |※あとで
| category_id | integer    | null: false |※あとで
| user        | references | null: false, foreign_key: true |

## Association

- belongs_to :user
- has_many :words


## Wordsテーブル

| Column   | Type       | Option                         |
| -------- | ---------- | ------------------------------ |
| wordname | string     | null: false                    |
| mean     | text       | null: false                    |
| user     | references | null: false, foreign_key: true |
| wordbook | references | null: false, foreign_key: true |

## Association

- belongs_to :user
- belongs_to :wordbook