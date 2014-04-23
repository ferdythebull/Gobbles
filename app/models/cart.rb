class Cart < ActiveRecord::Base
  belongs_to :store
  belongs_to :products

  CART = ["1","2","3","4","5","6"]
end
