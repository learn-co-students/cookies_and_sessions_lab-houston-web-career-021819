class ProductsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
  end

  def add
    session[:cart] << product_params(:product)[:product]
    redirect_to products_path
  end

  private

    def product_params(*args)
      params.permit(*args)
    end
end
