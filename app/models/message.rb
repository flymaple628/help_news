class Message < ActiveRecord::Base
	has_many :comments
	belongs_to :tag
end
