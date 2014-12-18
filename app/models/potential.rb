class Potential < ActiveRecord::Base

	# Relationships
	has_many :sales_orders
	has_many :quotes

end
