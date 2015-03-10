class Office < ActiveRecord::Base
	acts_as_messageable
	has_many :messages
end
