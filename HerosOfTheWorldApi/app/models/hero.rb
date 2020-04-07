class Hero < ApplicationRecord
  has_many :statistics, dependent: :destroy
  validates :name, :quote, :img_url, presence: true

  def self.generateHealth(role)
    if(role === 'Tank')
      '400'
    else
      '200'
    end
  end

end
