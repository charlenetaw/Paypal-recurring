class PlansController < ApplicationController
  def index
    @plans = Plan.order("price")
  end

  def new
  	@plan = Plan.new
  end

  def create
  	@plan = Plan.new(params[:plan])

  	@plan.save
  	redirect_to plans_path
  end
end
