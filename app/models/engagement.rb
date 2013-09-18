class Engagement < ActiveRecord::Base
  attr_accessible :contractor, :contractor_id, :contractor_last_name, :customer, :customer_id, :end_week, :rate_of_pay, :shift, :start_week
  belongs_to :customer, :class_name => 'Employer'
  belongs_to :contractor, :class_name => 'Employee'
end
