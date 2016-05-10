class Chat < ActiveRecord::Base
  belongs_to :user
  belongs_to :chatroom
  
  def user_name
    self.user.name
  end
end
