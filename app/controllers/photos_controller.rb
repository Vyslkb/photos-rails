class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def create
    @photo = Photo.create( photo_params )
  end

  def new
    @photo = Photo.new
  end

  private

  def photo_params
    params.require(:photo).permit(:picture, :user_id, :default_url)
  end
end
