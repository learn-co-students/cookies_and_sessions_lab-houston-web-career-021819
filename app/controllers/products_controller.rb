class ProductsController < ApplicationController
def new
end

def add_to_cart
  @product = params[:product]
  cart << @product
  redirect_to '/'
end

def index
end




end   