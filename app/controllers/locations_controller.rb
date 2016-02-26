class LocationsController < ApplicationController

  def index
    @locations = Location.all
  end

  def show
    @location = Location.find(params[:id])
  end

  def new
    @location = Location.new
  end

  def create
    location = Location.find_or_create_by location_params
    post = Post.find params[:post_id]
    post.locations << location
    redirect_to post_path(params[:post_id])
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to posts_path
  end

private
  def location_params
    params.require(:location).permit(:continent, :country, :region, :city, :long, :lat)
  end
end

