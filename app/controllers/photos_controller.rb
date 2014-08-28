class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def create
    @photo = Photo.create(photo_params)
    if @photo.save
      redirect_to photos_path, notice: "Selfie Added!"
    else
      render "new"
    end
  end

  def new
    @photo = Photo.new
  end

  private

  def photo_params
    params.require(:photo).permit(:picture, :user_id, :default_url, :picture_file_name, :picture_content_type)
  end
end
