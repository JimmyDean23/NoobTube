class Thumbnail < ActiveRecord::Base
	attr_accessible :title
	has_attached_file :filename
end
