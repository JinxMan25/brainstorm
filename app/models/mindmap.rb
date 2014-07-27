class Mindmap < ActiveRecord::Base
  before_create: set_unique_token


  def set_unique_token
    self.unique_token = SecureRandom.urlsafe_base64(6)
  end
end
