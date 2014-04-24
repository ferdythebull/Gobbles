class Product < ActiveRecord::Base
  belongs_to :store
  has_many :users, through: :carts
  has_many :carts
  validates :name, presence: true, length: {minimum: 5}

end 