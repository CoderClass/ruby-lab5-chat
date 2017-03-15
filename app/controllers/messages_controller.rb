class MessagesController < ApplicationController
  def index
    @messages = Message.order(created_at: :desc)
  end

  def create
    @message = Message.new message_params
    if @message.save
      ActionCable.server.broadcast("chat", message: render_message(@message))
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


  def render_message(message)
    ApplicationController.render(partial: 'messages/message', locals: {message: message})
  end
end
