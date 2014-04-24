class Product < ActiveRecord::Base
  has_many :checkouts
  has_many :carts
  has_many :stores, through: :checkouts
  validates :name, presence: true, length: {minimum: 5}

end 