class UsersController < ApplicationController
  def add_index
  end

  def show
    getWeek
    @plan = Plan.new
    @user = User.find(params[:id])
    @users = User.all
  end


  private

  def plan_params
    params.require(:plan).permit(:date, :plan).merge(user_id: params[:user_id])
  end

  def getWeek
    wdays = ['(日)','(月)','(火)','(水)','(木)','(金)','(土)','(日)','(月)','(火)','(水)','(木)','(金)','(土)','(日)','(月)','(火)','(水)','(木)','(金)','(土)','(日)','(月)','(火)','(水)','(木)','(金)','(土)']

    @todays_date = Date.today
    # 例)　今日が2月1日の場合・・・ Date.today.day => 1日

    @week_days = []

    plans = Plan.where(date: @todays_date..@todays_date + 28)

    28.times do |x|
      today_plans = []
      plans.each do |plan|
        today_plans.push(plan.plan) if plan.date == @todays_date + x
      end

      wday_num = Date.today.wday + x
      
      if wday_num >= 7
        wday_num = wday_num -7
      end
    
      days = { :month => (@todays_date + x).month, :date => (@todays_date+x).day, :plans => today_plans, :wday => wdays[wday_num]}
      @week_days.push(days)
    end

  end

  
end
