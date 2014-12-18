class Campaign < ActiveRecord::Base

	# Relationship
	belongs_to :company
	belongs_to :campaign_owner, class_name: "User", foriegn_key: "owner"
	belongs_to :campaign_type
	belongs_to :campaign_status

	# Delegate
	delegate :name, to: :campaign_type, prefix: true, allow_nil: true
	delegate :name, to: :campaign_status, prefix: true, allow_nil: true

	# Validation
	# validates :name, presence: true
	# validates :name, uniqueness: {scope: :company_id}
	# validates :start_date, presence: true
	# validates :end_date, presence: true
end
