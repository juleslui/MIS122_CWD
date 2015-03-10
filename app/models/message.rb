class Message < ActiveRecord::Base
	belongs_to :office
	mount_uploader :avatar, AvatarUploader
end
