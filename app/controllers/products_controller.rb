class ProductsController < ApplicationController
  def index
  end

  def new
    @product = Product.new
  end

  def create
    Product.create(product_params)
  end

  private
  def product_params
    params.require(:product).permit(:image, :text).merge(user_id: current_user.id)
  end
end
