class HerosController < ApplicationController
  def index
    @heros = Hero.order(:id)
    render json: @heros
  end

  def show
    @hero = Hero.find(params[:id])
    render json: @hero
  end

  def update
    @hero = Hero.find(params[:id])
    @hero.update(edit_hero_params)
    render json: @hero
  end

  def create
    # byebug
    @hero = Hero.create(create_hero_params)
    if @hero.valid?
      render json: @hero
    else
      render json: @hero.errors.full_messages
    end
  end

  def destroy
    @hero = Hero.find(params[:id])
    @hero.destroy
    render json: @hero
  end

  private

  def edit_hero_params
    params.permit(:likes)
  end

  def create_hero_params
    params.permit(:name, :quote, :img_url, :likes)
  end
end
