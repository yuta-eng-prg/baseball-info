class HelpfulMessagesController < ApplicationController
  before_action :authenticate_user!, only: [:create, :edit, :destroy]
  def create
    @message = Message.find(params[:message_id])
    @helpful_message = HelpfulMessage.create(helpful_message_params)
    redirect_to message_comments_path(@message.id) if @helpful_message.save
  end
  def destroy
    @helpful_message = HelpfulMessage.find(params[:id])
    redirect_to root_path if current_user.id != @helpful_message.user_id
    redirect_to message_comments_path(@helpful_message.message_id) if @helpful_message.destroy
  end

  private

  def helpful_message_params
    params.permit(
      :user_id,
      :message_id
    ).merge(user_id: current_user.id)
  end
  
end
