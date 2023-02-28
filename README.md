# アプリケーション名
ホームモニタリングアプリ

# アプリケーション概要
医療施設側と患者様側で在宅医療機器関連の情報をシェアする。

# URL
https://pacemaker-38423.onrender.com

テスト用アカウント

・Basic認証用パスワード：2222

・Basic認証用ID：admin

・施設メールアドレス：admin@admin

・施設メールパスワード：testtest

・ユーザーメールアドレス：test@com

・ユーザーパスワード：toku0901


# 利用方法
## 施設側利用方法
1.施設側ログインを実施すると当アプリで登録されているユーザーの一覧が表示される。

2.ユーザー名をクリックすると、ユーザー詳細ページに遷移され使用している医療機器の詳細や来院予定・機器の交換時期などの予定が表示される。

3.ユーザーの方は高齢者が予想され、機器の登録や編集は難しいと考え、施設側でのみ機器の登録、編集が実施できる。


## ユーザー側利用方法
1.ユーザー側でログインを行うと、マイページ・ログアウトの画面が表示される。

2.マイページをクリックし自身の詳細ページに遷移する。

3.ユーザー側では機器の登録・編集は行えず登録済みの機器詳細情報や次回来院時の情報が表示され施設側と共有できる。


# アプリケーションを作成した背景
前職で働いていた際にホームモニタリングサービスを利用している患者様が多く一括管理できるアプリがあると便利ではないかと考えた。院内で採用しているホームモニタリングアプリもあったが、次回来院日や機器の交換日などは電子カルテで日程を確認する必要があり、二つのシステムを利用する煩わしさがあった。そこで、当アプリを使用することで利用ユーザーに必要な情報を一元化でき、施設側の管理としても効率的になると考えた。また、患者様が来院された時に利用機器のバッテリー残量を聞かれることが多く、当アプリを閲覧することで自身の使用している機器の情報を確認できるメリットがある。

# 洗い出した要件
要件を定義したシート：https://docs.google.com/spreadsheets/d/1SS-7Jl6D6osAvD0TVNaCit6ZOOvg4XCw4DGHlh-lzjg/edit#gid=982722306

# 実装した機能についての画像やGIFおよびその説明
・施設側でログイン後、登録ユーザー一覧ページに遷移する
[label](https://gyazo.com/2854ba0b5508454e389e6927880b95e7)

・機器登録済みのユーザーには機器編集・機器登録ボタンが表示され、未登録ユーザーには機器登録ボタンが表示される
[label](https://gyazo.com/57ce78416172a1f4606edd79260fa956)

・機器編集・機器情報ボタンをクリックすると機器編集・機器詳細画面に遷移する。
[label](https://gyazo.com/283d1ea566c759c280ef1b9589d80b0b)

・ユーザー側でログインするとマイページログアウト画面が表示され、マイページボタンをクリックするとユーザー詳細画面に遷移する。
[label](https://gyazo.com/16c300713d029f933fdfa8b0a00d3999)

・日付、予定を入力し保存するとカレンダーに反映される。
[label](https://gyazo.com/93a76252d47b7d7c6fddc51eacec8722)

# 実装予定の機能
来院時の予定を変更したい時や質問などをできるようにチャット機能を実装予定。



# データベース設計

![Alt text](https://i.gyazo.com/f24b2b10e993284aa4ac162183dcab2c.png)

# 画面遷移図

(https://gyazo.com/ac77696fa06acd70ad41f485f7238193)

# 開発環境
・フロントエンド

・バックエンド

・インフラ

・テキストエディタ

・タスク管理


# ローカルでの動作方法
以下のコマンドを順に実行

% git clone https://github.com/tokuno-masahiko/pacemaker-38423

% cd ~/projects/pacemaker-38423

% bundle install

% yarn install


# 工夫したポイント
管理者側とユーザー側でログインしいた際に挙動を変えられるように実装した。Tech Campのカリキュラムにはなかったが、施設で管理するアプリケーションとしては必要な実装だと考え、公式のドキュメントなどを閲覧しながら実装を行なった。


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
