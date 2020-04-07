class HerosController < ApplicationController
  def index
    @heros = Hero.order(:id)
    @statistics = Statistic.all
    @her = @heros.map {|h| ActiveModelSerializers::Adapter::Json.new(HeroSerializer.new(h)).serializable_hash}
    @final = @her.map {|o| o[:hero] }

    #serialized_hero = ActiveModelSerializers::Adapter::Json.new(HeroSerializer.new(@hero)).serializable_hash
    render json: {heros: @final, statistic: @statistics}
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
    # byebuga

    @hero = Hero.create(create_hero_params)
    @stat = Statistic.create(health: Hero.generateHealth(params[:role]), affiliation: params[:affiliation], role: params[:role], hero_id: @hero.id)
    if @hero.valid?
      render json: @stat.hero
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
