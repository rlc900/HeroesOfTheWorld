class Hero < ApplicationRecord
  has_many :statistics, dependent: :destroy
  validates :name, :quote, :img_url, presence: true

  def self.generateHealth(role)
    if(role === 'Tank')
      'Health: 400'
    else
      'Health: 200'
    end
  end

end
