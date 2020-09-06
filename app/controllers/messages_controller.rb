class MessagesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  def about
    
  end
  def index
    @messages = Message.all.order('created_at DESC')
  end
  def new
    @message = Message.new
  end
  def create
    
  end
  def create
    @message = Message.create(message_params)
    if @message.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def message_params
    params.require(:message).permit(
      :content,
      :generation_id,
      :genre_id,
      :body_parts_id,
      :category_id,
      :user_id
    ).merge(user_id: current_user.id)
  end

end
