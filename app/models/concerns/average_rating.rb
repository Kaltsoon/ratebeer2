module AverageRating extend ActiveSupport::Concern
  def average_rating
    ratings.average(:score)
  end
end
