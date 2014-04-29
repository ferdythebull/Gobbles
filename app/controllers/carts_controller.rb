class CartsController < ApplicationController
  # before_filter :find_product
  before_filter :find_cart, only: [ :show, :edit, :update]
  before_filter :find_cart, only: [ :show, :edit, :update]

  def index
  end

  def show
  end

  def new
    @checkouts = Checkout.all
    @cart = @store.carts.new
  end

  def create
    @cart = @store.carts.create cart_params
  end

  def edit
    @checkouts = Checkout.all
  end

  def update
    @cart.update_attributes cart_params.merge({in_edit: "inside_of_edit"})
  end  

  def destroy
  @cart = current_user.carts.find_by_product_id(params[:id])
  puts "heres the cart before delete"
  puts @cart
  @cart.delete
  redirect_to carts_path 
  end

private
  def find_cart
    @cart = Cart.find params[:id]
  end

  def find_store
    @store = Store.find params[:store_id]
  end

  def find_product
    @product = @store.products.find params[:product_id]
    puts "the product id is"+ @product
  end

  def cart_params
    params.require(:product).permit({user_ids: []})
  end
end
