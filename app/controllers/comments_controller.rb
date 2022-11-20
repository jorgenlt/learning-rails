class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to root_path
      flash.notice = "Comment submitted."
    else
      flash.alert = "Comment was not registered. Try again."
      redirect_to root_path
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :date)
  end
end
