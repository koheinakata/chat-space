# README

* Database creation

##Usersテーブル
|column               |type    |index         |not null         |uniqu    |
|:----                |-----   |              |                 |         |
|name                 |string  |add_index     |null: false      |ture     |
devise  use

###Userモデルのアソシエーション
+ has_many   :group_users
+ has_many   groups through group_users
+ has_many   :messages


##Groupsテーブル
|column               |type    |index         |not null         |uniqu    |
|:----                |-----   |              |                 |         |
|name                 |string  |add_index     |null: false      |ture     |


###Groupモデルのアソシエーション
+ has_many   :group_users
+ has_many   users through group_users
+ has_many   messages


##group_usersテーブル
|column               |type    |index         |not null         |uniqu    |
|:----                |-----   |              |                 |         |
|user_id              |integer |              |null: false      |ture     |
|group_id             |integer |              |null: false      |ture     |

###group_userモデルのアソシエーション
+ belongs_to :user
+ belongs_to :group


##messagesテーブル
|column               |type    |index         |not null         |uniqu    |
|:----                |-----   |              |                 |         |
|body                 |string  |              |null: false      |         |
|image                |string  |              |null: false      |         |
|group_id             |integer |              |null: false      |         |
|user_id              |integer |              |null: false      |         |
###Messageモデルのアソシエーション
+ belongs_to :user
+ belongs_to :group
