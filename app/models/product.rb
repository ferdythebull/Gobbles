class Product < ActiveRecord::Base
  belongs_to :store
  belongs_to :cart
  validates :name, presence: true, length: {minimum: 5}

end 