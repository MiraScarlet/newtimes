class Employee < ActiveRecord::Base

  attr_accessible :address, :email, :job_details, :message, :name, :phone, :shift, :profile
  has_attached_file :profile
end
