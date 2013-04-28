class Video < ActiveRecord::Base
  attr_accessible :title, :description
  validates :title, presence: true, uniqueness: true
  belongs_to :user
  has_one :thumbnail
  has_attached_file :filename
end
