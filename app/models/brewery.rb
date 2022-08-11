class Brewery < ApplicationRecord
  include AverageRating

  has_many :beers, dependent: :destroy
  has_many :ratings, through: :beers
end
