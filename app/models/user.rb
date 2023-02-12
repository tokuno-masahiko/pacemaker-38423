class User < ApplicationRecord
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :product
  has_many :plans
  has_one_attached :image
end
