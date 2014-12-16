class Account < ActiveRecord::Base

	# Relationship
	has_many :sales_orders
	has_many :invoices
end
