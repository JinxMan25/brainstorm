class Node < ActiveRecord::Base
 validates :source_body, length: { maximum: 275, too_long: "You are only allowed a maximum of 275 characters" }
 validates :target_body, length: { maximum: 275, too_long: "You are only allowed a maximum of 275 characters" }
 validates :source, :target, length: { maximum: 10, too_long: "You are only allowed a maximum of 10 characters" }

 belongs_to :mindmap

 attr_accessible :target, :source, :target_body, :source_body

end
