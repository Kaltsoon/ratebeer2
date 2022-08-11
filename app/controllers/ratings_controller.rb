class RatingsController < ApplicationController
  def index
    @ratings = Rating.all
  end

  def new
    @rating = Rating.new
    @beers = Beer.all
  end

  def create
    Rating.create params.require(:rating).permit(:beer_id, :score)

    redirect_to ratings_path
  end

  def destroy
    @rating = Rating.find(params[:id])
    @rating.destroy

    redirect_to ratings_path
  end
end
