class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    redirect_to "/items/#{comment.item.id}" 
  end

  private
  def comment_params
    params.require(:comment).permit(:comment, :comment_nickname, :likes, :bad).merge( item_id: params[:item_id])
  end
end
