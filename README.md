# README

* Database creation

##Usersテーブル
|column               |type    |index         |not null         |uniqu    |
|:----                |-----   |              |                 |         |
|name                 |string  |yes           |yes              |yes      |
use devise

###Userモデルのアソシエーション
+ has_many   :group_users
+ has_many   groups through group_users
+ has_many   :messages


##Groupsテーブル
|column               |type    |index         |not null         |uniqu    |
|:----                |-----   |              |                 |         |
|name                 |string  |yes           |yes              |yes      |


###Groupモデルのアソシエーション
+ has_many   :group_users
+ has_many   users through group_users
+ has_many   messages


##group_usersテーブル
|column               |type    |index         |not null         |uniqu    |
|:----                |-----   |              |                 |         |
|user_id              |integer |              |yes              |yes      |
|group_id             |integer |              |yes              |yes      |

###group_userモデルのアソシエーション
+ belongs_to :user
+ belongs_to :group


##messagesテーブル
|column               |type    |index         |not null         |uniqu    |
|:----                |-----   |              |                 |         |
|body                 |string  |              |yes              |         |
|image                |string  |              |yes              |         |
|group_id             |integer |              |yes              |         |
|user_id              |integer |              |yes              |         |
###Messageモデルのアソシエーション
+ belongs_to :user
+ belongs_to :group
