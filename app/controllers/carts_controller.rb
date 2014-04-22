class CartsController < ApplicationController
  before_filter :find_store
  before_filter :find_cart, only: [:show, :edit, :update, :destroy]

  def new
    @cart = @store.carts.new
  end

  def create
    @cart = @store.carts.create cart_params
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
private
  def find_store
    @store = Store.find params[:store_id]
  end

  def find_cart
    @cart = Cart.find params[:cart_id]
  end

  def cart_params
    params.require(:cart).permit(:, :dosage)
  end

end
