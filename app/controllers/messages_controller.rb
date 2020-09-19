class MessagesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def about
    
  end

  def index
    @messages = Message.all.order('created_at DESC')
  end

  def new
    @message = Message.new
  end
  
  def create
    @message = Message.create(message_params)
    if @message.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @message = Message.find(params[:id])
  end

  def edit
    @message = Message.find(params[:id])
    redirect_to root_path if current_user.id != @message.user_id
  end
  
  def update
    @message = Message.find(params[:id])
    redirect_to root_path if current_user.id != @message.user_id
    if @message.update(message_params)
      redirect_to message_path(@message.id)
    else
      render :edit
    end
  end

  def destroy
    @message = Message.find(params[:id])
    redirect_to root_path if current_user.id != @message.user_id
    redirect_to user_path(current_user.id) if @message.destroy
  end

  def search
    @messages = Message.search(params[:keyword]) 
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
