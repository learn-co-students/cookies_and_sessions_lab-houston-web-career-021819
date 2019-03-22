class ProductsController < ApplicationController

  def index
    @products = Product.new
  end

  def add 
    @product = Product.create(name: product_params[:product])
    self.cart << @product.name
    redirect_to '/'
  end

  private

  def product_params
    params.permit(:product)
  end

end
