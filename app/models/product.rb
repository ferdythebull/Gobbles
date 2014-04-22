class Product < ActiveRecord::Base
  belongs_to :store

  validates :name, presence: true, length: {minimum: 5}

end