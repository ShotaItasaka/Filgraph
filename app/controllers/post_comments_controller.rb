class PostCommentsController < ApplicationController
  def create
    filmimage = Filmimage.find(params[:filmimage_id])
    comment = current_user.post_comments.new(post_comment_params)
    comment.filmimage_id = film_image.id
    comment.save
    redirect_to filmimage_path
  end

  def destroy
    PostComment.find(params[:id]).destroy
    redirect_to post_image_path(params[:post_image_id])
  end

  private

  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end
end
