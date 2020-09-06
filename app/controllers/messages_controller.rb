class MessagesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  def index
    
  end
  def new
    @message = Message.new
  end
  def create
    
  end
end
