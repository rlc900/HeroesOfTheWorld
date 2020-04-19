class StatisticsController < ApplicationController

  def index
    @statistics = Statistic.order(:id)
    render json: @statistics
  end

  def show
    @statistic = Statistic.find(params[:id])
    render json: @statistic
  end

  def create
    # byebug
    @statistic = Statistic.create(create_statistic_params)
    if @statistic.valid?
      render json: @statistic
    else
      render json: @statistic.errors.full_messages
    end
  end

  def destroy
    @statistic = Statistic.find(params[:id])
    @statistic.destroy
    render json: @statistic
  end

  private

  def create_statistic_params
    params.permit(:role, :affiliation, :health)
  end

end
