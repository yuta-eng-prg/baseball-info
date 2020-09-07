class CommentsController < ApplicationController
  def index
    @comment = Comment.new
    @message = Message.find(params[:message_id])
  end
  def create
    
  end
end
