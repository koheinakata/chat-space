# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

##Usersテーブル
|column               |type    |
|:----                |-----   |
|user_name            |string  |

###Userモデルのアソシエーション
+ has_many   :users_groups
+ has_many   :contents


##Groupsテーブル
|column               |type    |
|:----                |-----   |
|group_name           |string  |


###Groupモデルのアソシエーション
+ has_many   :users_groups


##users_groupsテーブル
|column               |type    |
|:----                |-----   |
|user_id              |integer |
|group_id             |integer |

###user_groupモデルのアソシエーション
+ belongs_to :user
+ belongs_to :group


##Contentsテーブル
|column               |type    |
|:----                |-----   |
|body                 |string  |
|image                |string  |
|group_id             |integer |
|user_id              |integer |

###Contentモデルのアソシエーション
+ belongs_to :user


* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
