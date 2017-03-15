class MessagesController < ApplicationController
  def index
    @messages = Message.order(created_at: :desc)
  end

  def create
    @message = Message.new message_params
    if @message.save
      redirect_to messages_path
    else
      flash[:error] = "Error: #{@message.errors.full_messages.to_sentence}"
      redirect_to messages_path
    end
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end
end
