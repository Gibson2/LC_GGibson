class Post < ApplicationRecord
	# extend FriendlyId
  #friendly_id :title, title: :slugged
  has_many :comments, dependent: :destroy
  belongs_to :user
  
 	scope :not_user,->(user) {where.not(user: user)}

	paginates_per 5

	mount_uploader :photo, PictureUploader

end
