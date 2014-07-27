class Mindmap < ActiveRecord::Base
  before_create: generate_token
  validates: :unique_token, :uniqueness => true



  def generate_token
    self.unique_token = SecureRandom.urlsafe_base64(6)
  end
end
