class Vendor < ActiveRecord::Base

	# Relationship
	has_many :purchase_orders
end
