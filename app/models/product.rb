class Product < ActiveRecord::Base

	# Relationship
	has_many :purchase_orders
	has_many :invoices
end
