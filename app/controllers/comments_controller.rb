class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    comment.post_id = params[:post_id]
    comment.save
    redirect_to post_path(params[:post_id])
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end