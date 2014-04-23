class Product < ActiveRecord::Base
  has_many :carts
  has_many :stores, through: :carts
  validates :name, presence: true, length: {minimum: 5}

end 