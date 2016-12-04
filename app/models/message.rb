class Message < ApplicationRecord
  belongs_to :user
  belongs_to :conversation

  def username
    self.user.username
  end
  
end
