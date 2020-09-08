class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :edit, :update, :destroy]

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

  def edit
    @message = Message.find(params[:message_id])
    @comment = Comment.find(params[:id])
    redirect_to root_path if current_user.id != @message.user_id
  end

  def update
    @message = Message.find(params[:message_id])
    @comment = Comment.find(params[:id])
    redirect_to root_path if current_user.id != @comment.user_id
    if @comment.update(comment_params)
      redirect_to message_comments_path(@comment.message_id)
    else
      render :edit
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    redirect_to root_path if current_user.id != @comment.user_id
    redirect_to message_comments_path(@comment.message_id) if @comment.destroy
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
