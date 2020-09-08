class CommentsController < ApplicationController
  def index
    @comment = Comment.new
    @message = Message.find(params[:message_id])
    @comments = @message.comments.includes(:user)
  end
  def create
    @message = Message.find(params[:message_id])
    @comment = @message.comments.new(comment_params)
    if @comment.save
      redirect_to message_comments_path(@message.id)
    else
      @comments = @message.comments.includes(:user)
      render :index
    end
  end

  private

  def comment_params
    params.require(:comment).permit(
      :comment,
      :user_id,
      :message_id
    ).merge(user_id: current_user.id)
  end


end
