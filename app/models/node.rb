class Node < ActiveRecord::Base
 validates :source_body, :length: { maximum: 275, too_long: "You are only allowed a maximum of 275 characters" }, presence: true
 validates :target_body, :length: { maximum: 275, too_long: "You are only allowed a maximum of 275 characters" }, presence: true
end
