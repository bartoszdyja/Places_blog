class Place < ActiveRecord::Base
	belongs_to :category
	has_attached_file :image, :styles => {:small => "120x120>"}
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
