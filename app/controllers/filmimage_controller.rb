class FilmimageController < ApplicationController
  def new
    @filmimage = Filmimage.new
  end

  def create
    @filmimage = Filmimage.new(filmimage.params)
    @filmimage.user_id = current_user.id
    @filmimage.save
    redirect_to filmimage_path
  end
  
  def index
    @filmimage = Filmimages.all
  end

  def show
    @filmimage = Filmimage.find(params[:id])
    @post_comment = PostComment.ne
  end

  def destroy
    filmimage = Filmimage.find(params[:id])
    filmimage.destroy
    redirect_to filmimage_index_path
  end

  private

  def filmimage_params
    params.require(:filmimage).permit(:image, :caption)
  end
end
