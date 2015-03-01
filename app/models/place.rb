class Place < ActiveRecord::Base
	belongs_to :category
	belongs_to :user
	has_attached_file :image, :styles => {:small => "120x120>", :normal => "600x600>"}
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  	acts_as_votable
end
