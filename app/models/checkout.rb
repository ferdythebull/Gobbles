class Checkout < ActiveRecord::Base
belongs_to :store
belongs_to :product
end

