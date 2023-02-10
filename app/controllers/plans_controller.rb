class PlansController < ApplicationController
  def create
    @plan = Plan.new(plan_params)
    if @plan.save
      redirect_to user_path(@plan.user.id)
    else
      render :show
    end
  end

  private

  def plan_params
    params.require(:plan).permit(:date, :plan).merge(user_id: current_user.id)
  end
end
