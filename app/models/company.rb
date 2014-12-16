class Company < ActiveRecord::Base

	# Relationships
	has_many :users
	has_many :tasks
	has_many :events
	has_many :phone_calls
	has_many :purchase_orders
	has_many :sales_orders
	has_many :invoices


	# Nested Attributes
	accepts_nested_attributes_for :users

	# Validations
	validates :name, presence: true
	validates :phone, presence: true

end
