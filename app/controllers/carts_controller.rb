class CartsController < ApplicationController
  before_filter :find_store
  before_filter :find_product
  before_filter :find_cart, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @checkouts = Checkout.all
    @cart = @store.carts.new
  end

  def create
  end

  def edit
    @checkouts = Checkout.all
  end

  def update
    @cart.update_attributes cart_params.merge({in_edit: "inside_of_edit"})
  end  

  def destroy
  @cart = @store.carts.delete
  redirect_to store_path(@store) 
  end

private
  def find_cart
    @cart = Cart.find params[:cart_id]
  end

  def find_store
    @store = Store.find params[:store_id]
  end

  def find_product
    @product = @store.product.find params[:id]
  end

  def cart_params
    params.require(:product).permit({checkout_ids: []})
  end
end
