class PlansController < ApplicationController


  def create
    @plan = Plan.new(plan_params)
    if @plan.save
      redirect_to user_path(@plan.user_id)
    else
      redirect_to user_path(@plan.user_id)
    end
  end

  private

  def plan_params
    params.require(:plan).permit(:date, :plan).merge(user_id: params[:user_id])
  end
end
