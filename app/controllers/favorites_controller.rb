class FavoritesController < ApplicationController

  def create
    filmimage = Filmimage.find(params[:filmimage_id])
    favorite = current_user.favorites.new(filmimage_id: post_image.id)
    favorite.save
    redirect_to filmimage_path(filmimage)
  end

  def destroy
    filmimage = Filmimage.find(params[:filmimage_id])
    favorite = current_user.favorites.find_by(filmimage_id: post_image.id)
    favorite.destroy
    redirect_to filmimage_path(filmimage)
  end

end
