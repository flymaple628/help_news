class Tag < ActiveRecord::Base
	has_many :message
end
