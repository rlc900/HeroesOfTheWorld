class HeroSerializer < ActiveModel::Serializer
  attributes :id, :name, :quote, :img_url, :likes
  has_many :statistics


  ### 
  ###
end
