class ChatController < ApplicationController
  def chatsend
    chat=Chat.new
    chat.user_id=current_user.id
    chat.chatroom_id=params[:id]
    chat.ch_text=params[:chat][:ch_text]
     @chat1=Chatroom.find(params[:id]).chats
     Pusher['test_channel'].trigger('chatroom'+params[:id].to_s, {:chat_html => render(partial: 'chatroom/content')})

    respond_to do |format|
      if chat.save
       
        format.js

      end
    end
  end
end
