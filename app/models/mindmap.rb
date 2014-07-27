class Mindmap < ActiveRecord::Base
  before_create :generate_token
  validates :unique_token, :uniqueness => true
  has_many :nodes

  def generate_token
    self.unique_token = SecureRandom.urlsafe_base64(6)
  end
end
