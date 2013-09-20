class Engagement < ActiveRecord::Base
  attr_accessible :contractor_id, :contractor_last_name, :customer_id, :end_week, :rate_of_pay, :shift, :start_week, :contractor_name, :customer_name
  belongs_to :customer, :class_name => 'Employer'
  belongs_to :contractor, :class_name => 'Employee'

  validates_presence_of :customer_id, :contractor_id
end
