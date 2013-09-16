class Job < ActiveRecord::Base
  attr_accessible :contractor, :customer, :employee_id, :employer_id, :shift, :week_of, :contractor_lname, :rate_of_pay
  belongs_to  :employee
  belongs_to  :employer


end
