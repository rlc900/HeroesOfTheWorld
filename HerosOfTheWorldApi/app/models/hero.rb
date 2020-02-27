class Hero < ApplicationRecord
  has_many :statistics, dependent: :destroy
  validates :name, :quote, :img_url, presence: true
end
