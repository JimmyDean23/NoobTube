class Video < ActiveRecord::Base
	attr_accessible :title
	belongs_to :user
	has_one :thumbnail
	has_attached_file :filename
end
