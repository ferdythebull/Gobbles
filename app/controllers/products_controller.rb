class ProductsController < ApplicationController
  before_filter :find_store
  before_filter :find_product, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @product = @store.products.new
  end

  def create
    @product = @store.products.new product_params
    if @product.save
      redirect_to store_path(@store)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @product.update_attributes product_params.merge({in_edit: "inside_of_edit"})
    redirect_to store_path(@store)
  end

  def destroy
    @store.delete
    redirect_to store_path(@store)
  end

  def add_to_cart
    current_user.carts.create({product_id: params[:id]})
    redirect_to store_path(@store)
  end

private
  def find_store
    @store = Store.find params[:store_id]
  end

  def find_product
    @product = @store.products.find params[:id]
  end

  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end