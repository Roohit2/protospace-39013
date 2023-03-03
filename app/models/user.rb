class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
          # Sampleモデルにおいて、「a、b、cそれぞれのカラムが空では保存できない」というバリデーションを設定する場合
          validates :name,        presence: true
          validates :profile,     presence: true
          validates :occupation,  presence: true
          validates :position,    presence: true
          #1vs多
          has_many :prototypes
          has_many :comments
end
