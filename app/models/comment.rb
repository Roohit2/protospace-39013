class Comment < ApplicationRecord
#1vs1のアソシエーション(データベースの紐付け)
  belongs_to :user
  belongs_to :prototype

  validates :content, presence: true
end