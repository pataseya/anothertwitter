class MessagesController < ApplicationController

  before_action :authenticate_user!

  def create
    current_user.messages.create!(message_params)
    redirect_to timeline_path
  end
  
  def destroy
    message = Message.find(params[:id])
    message.destroy
  end


  private

  def message_params
    params.require(:message).permit(:body)
  end
end
