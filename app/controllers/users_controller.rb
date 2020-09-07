class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :destroy]
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @messages = Message.where(user_id: @user.id)
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
    redirect_to root_path if @user.destroy
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
