class Post < ApplicationRecord
	# extend FriendlyId
 #  	friendly_id :title, title: :slugged

 scope :not_user,->(user) {where.not(user: user)}

	has_many :comments, dependent: :destroy
	belongs_to :user
	

	paginates_per 5

	mount_uploader :photo, PictureUploader

end
