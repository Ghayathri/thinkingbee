class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable, :confirmable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Accociations
  belongs_to :company
  has_many :task_owners, class_name: "Task", foreign_key: "owner"
  has_many :event_owners, class_name: "Event", foreign_key: "owner"
  has_many :call_owners, class_name: "PhoneCall", foreign_key: "owner"
  has_many :porder_owners, class_name: "PurchaseOrder", foreign_key: "owner"
  has_many :sorder_owners, class_name: "SalesOrder", foreign_key: "owner"
end
