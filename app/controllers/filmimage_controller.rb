class FilmimageController < ApplicationController
  def new
    @filmimage = Filmimage.new
  end

  def create
    @filmimage = Filmimage.new(filmimage_params)
    @filmimage.user_id = current_user.id
    if @filmimage.save
      redirect_to filmimage_index_path
    else
      @filmimages = Filmimage.all
      @user = current_user
      render :index
    end
  end
  
  def index
    @filmimages = Filmimage.all
    @filmimage = Filmimage.new
    @user = current_user
  end

  def show
    @filmimage = Filmimage.find(params[:id])
    @post_comment = PostComment.new
  end

  def update
    @filmimage = Filmimage.find(params[:id])
    if @filmimage.update(filmimage_params)
      redirect_to filmimage_path(@filmimage.id)
    else
      render :edit
    end
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
