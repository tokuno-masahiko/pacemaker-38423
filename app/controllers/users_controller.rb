class UsersController < ApplicationController
  def show
    @name = current_user.name
    @product = current_user.product
  end
end
