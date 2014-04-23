class Store < ActiveRecord::Base
  has_many :carts
  has_many :products, through: :checkouts
end
