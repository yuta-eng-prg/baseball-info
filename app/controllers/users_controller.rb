class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :destroy]
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @messages = Message.where(user_id: @user.id).order('created_at DESC')
    @helpful_message_count = 0
    @messages.each do |message|
      count = HelpfulMessage.where(message_id: message.id).count
      @helpful_message_count += count
    end
  end

  def edit
  
  end
  
  def update
    if current_user.update(user_params)
      redirect_to user_path(current_user.id)
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    redirect_to root_path if current_user.id != @user.id
    if @user.destroy
      flash[:notice] = "退会しました"
      redirect_to root_path 
    end
  end

  # def edit
  #   redirect_to root_path if current_user.id != @user.id
  # end
  
  # def update
  #   redirect_to root_path if current_user.id != @user.id
  # end

  private

  def user_params
    params.require(:user).permit(:nickname, :email, :password)
  end

end
