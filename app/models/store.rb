class Store < ActiveRecord::Base
  has_many :carts
  has_many :checkouts
  has_many :products, through: :checkouts
end
