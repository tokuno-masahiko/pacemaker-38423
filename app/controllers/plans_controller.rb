class PlansController < ApplicationController
  def create
    @plan = Plan.new(plan_params)
    if @plan.save
      redeirect_to root_path
    else
      render :show
    end
  end

  private

  def plan_params
    params.require(:plan).permit(:date, :plan).merge(user_id: current_user.id)
  end
end
