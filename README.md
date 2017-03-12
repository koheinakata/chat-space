# README

* Database creation

##Usersテーブル
|column               |type    |
|:----                |-----   |
|name                 |string  |
|devise  use          |text  |

###Userモデルのアソシエーション
+ has_many   :group_users
+ has_many   groups through group_users
+ has_many   :messages


##Groupsテーブル
|column               |type    |
|:----                |-----   |
|name           |string  |


###Groupモデルのアソシエーション
+ has_many   :users_groups
+ has_many   users through group_users
+ has_many   messages


##Users_groupsテーブル
|column               |type    |
|:----                |-----   |
|user_id              |integer |
|group_id             |integer |

###user_groupモデルのアソシエーション
+ belongs_to :user
+ belongs_to :group


##messagesテーブル
|column               |type    |
|:----                |-----   |
|body                 |string  |
|image                |string  |
|group_id             |integer |
|user_id              |integer |

###Messageモデルのアソシエーション
+ belongs_to :user
