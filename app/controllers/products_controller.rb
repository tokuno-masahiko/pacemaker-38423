class ProductsController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:user_id])
    @product = Product.find(params[:user_id])
  end

  def edit
    @product = Product.find(params[:user_id])
  end

  def update
    @product = Product.find(params[:user_id])
    if @product.update(product_params)
      redirect_to user_path(@product.user_id)
    else
      render :edit
    end
  end

  private
  def product_params
    params.require(:product).permit(:image, :maker, :item, :battery).merge(user_id: params[:user_id])
  end
end
