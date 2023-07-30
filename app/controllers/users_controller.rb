class UsersController < ApplicationController
  before_action :correct_user, only:[:edit, :update, :destroy]

  def show
    @user = User.find(params[:id])
    @filmimage = @user.filmimage
    @filmimages = Filmimage.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
     if @user.update(user_params)
       redirect_to user_path(@user.id)
     else
       render :edit
     end
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

  def correct_user
   @user = User.find(params[:id])
   unless @user == current_user
     redirect_to user_path(current_user)
   end
  end

end
