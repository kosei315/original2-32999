# README

・アプリケーション名
　自身のホームページ

・使用方法
　自身のことを知ってもらうために作成したアプリです

・各テーブル一覧
usersテーブル(ユーザー)

| Column                          | Type       | Options      |
| ------------------------------- | ---------- | ------------ |
| name                            | string     | null: false  |名前
| email                           | string     | null: false  |メールアドレス
| profile                         | string     | null: false  |プロフィール
| image_id                        | string     | null: false  |写真
| password                        | string     | null: false  |パスワード
| created_at                      | string     | null: false  |作成日
| update_at                       | string     | null: false  |更新日

### Association
has_many :travels


travelsテーブル(旅行)

| Column               | Type       | Options                        |
| ---------------------| ------     | -------------------------------|
| title                | string     | null: false                    |旅行先名
| body                 | integer    | null: false                    |旅行先詳細
| created_at           | text       | null: false                    |作成日
| update_at            | integer    | null: false                    |更新日
| user_id              | references | null: false, foreign_key: true |ユーザーid

### Association
- belongs_to :user

favoritesテーブル(いいね)

| Column               | Type       | Options                        |
| ---------------------| ------     | -------------------------------|
| user_id              | integer    | null: false                    |ユーザーid
| travel_id            | integer    | null: false                    |旅行先id

### Association
- has_many :users
- has_many :travels