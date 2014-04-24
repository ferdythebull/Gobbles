class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :carts
  has_many :products, through: :carts

  before_create :create_cart

  def create_cart
    @cart = Cart.create 
  end
private

  # def cart_params
  #   params.require(:product).permit({cart_ids: []})
  # end
end
