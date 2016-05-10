class ChatroomController < ApplicationController
  before_action :set_chatroom, only: [:show]
  def index
    @chatrooms=Chatroom.all
  end
  def show
    @chats=@chatroom.chats
    @chat=Chat.new
  end
  def chatroom_refresher
    respond_to do |format|    
       
        format.js    
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chatroom
      @chatroom = Chatroom.find(params[:id])
    end
end
