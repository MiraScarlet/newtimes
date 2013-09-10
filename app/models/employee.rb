class Employee < ActiveRecord::Base

  attr_accessible :address, :email, :job_details, :message, :name, :phone, :shift, :profile, :last_name, :gender, :rate_of_pay
  validates_presence_of :name, :last_name, :phone, :job_details, :message, :profile_file_name
  validates_length_of :name, :minimum => 3, :too_short => "please enter at least 3 character"
  validates_length_of :last_name, :minimum => 3, :too_short => "please enter at least 3 character"
  validates_length_of :job_details, :minimum => 20, :too_short => "please enter at least 20 character"
  validates_length_of :message, :minimum => 40, :too_short => "please enter at least 40 character"

  validates_format_of :phone,
                      :with => /\A[0-9]{10}\Z/

  validates :email,
            :presence => true,
            :uniqueness => true,
            :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }


  has_attached_file :profile



end