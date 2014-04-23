class Cart < ActiveRecord::Base
  belongs_to :store
  belongs_to :products

end
