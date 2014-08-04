class Mindmap < ActiveRecord::Base
  attr_accessible :mindmap_name
  before_create :generate_token
  validates :unique_token, :uniqueness => true
  has_many :nodes

  def generate_token
    self.unique_token = SecureRandom.urlsafe_base64(6)
  end

  def to_param
    unique_token
  end
end
