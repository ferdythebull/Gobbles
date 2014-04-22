class HomeController < ApplicationController
  def index
    @stores = Store.all
  end
  def admin
    @stores = Store.all
  end  
end
