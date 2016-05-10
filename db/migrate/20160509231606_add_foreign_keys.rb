class AddForeignKeys < ActiveRecord::Migration
  def change
    add_reference :chats, :chatroom, foreign_key: true
    add_reference :chats, :user, foreign_key: true
  end
end
