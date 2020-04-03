class StatisticsController < ApplicationController

  def index
    @statistics = Statistic.order(:id)
    render json: @statistics
  end

  def show
    @statistic = Statistic.find(params[:id])
    render json: @statistic
  end

  def update
    @statistic = Statistic.find(params[:id])
    @statistic.update(edit_statistic_params)
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

  def edit_statistic_params
    params.permit(:likes)
  end

  def create_statistic_params
    params.permit(:name, :quote, :img_url, :likes)
  end

end
