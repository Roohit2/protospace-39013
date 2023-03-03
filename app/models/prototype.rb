class Prototype < ApplicationRecord
  belongs_to :user
  has_one_attached :image #1つのファイルの添付可能
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true  
  validates :image, presence: true
end
