# README

* Database creation

##Usersテーブル
|column               |type    |index         |not null         |unique   |
|:----                |-----   |              |                 |         |
|name                 |string  |yes           |yes              |yes      |
use devise

###Userモデルのアソシエーション
+ has_many   :group_users
+ has_many   :groups through group_users
+ has_many   :messages


##Groupsテーブル
|column               |type    |index         |not null         |unique   |
|:----                |-----   |              |                 |         |
|name                 |string  |              |yes              |yes      |


###Groupモデルのアソシエーション
+ has_many   :group_users
+ has_many   :users through group_users
+ has_many   :messages


##group_usersテーブル
|column               |type    |index         |not null         |unique   |
|:----                |-----   |              |                 |         |
|user_id              |integer |yes           |yes              |         |
|group_id             |integer |yes           |yes              |         |

###group_userモデルのアソシエーション
+ belongs_to :user
+ belongs_to :group


##messagesテーブル
|column               |type    |index         |not null         |unique   |
|:----                |-----   |              |                 |         |
|body                 |text    |              |yes              |         |
|image                |string  |              |yes              |         |
|group_id             |integer |yes           |yes              |         |
|user_id              |integer |yes           |yes              |         |
###Messageモデルのアソシエーション
+ belongs_to :user
+ belongs_to :group
