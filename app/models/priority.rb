class Priority < ActiveRecord::Base

	# Relationship
	has_many :tasks
	has_many :events
end
