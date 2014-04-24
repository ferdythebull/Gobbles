class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    # @stores = Store.all
  end
  def admin
    @stores = Store.all
    @products = Product.all 
  end  
end
