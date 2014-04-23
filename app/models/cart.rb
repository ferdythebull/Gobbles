class Cart < ActiveRecord::Base
  belongs_to :store
  has_many :products
end
