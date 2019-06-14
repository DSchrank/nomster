class PhotosController < ApplicationController

  def new
    @photo = Photo.new
  end

  def create
    @place = Place.find(params[:place_id])
    @place.photos.create(params[:photo_params])
    redirect_to place_path(@place)
  end

  private

  def photo_params
    params.require(:photo).permit(:caption)
  end


end
