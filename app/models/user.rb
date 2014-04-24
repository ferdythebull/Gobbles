class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  before_create :create_cart

  def create_cart
    @cart = @store.carts.create cart_params  
  end
private
  def cart_params
    params.require(:product).permit({checkout_ids: []})
  end
end
