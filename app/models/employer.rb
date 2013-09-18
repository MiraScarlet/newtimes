class Employer < ActiveRecord::Base

  has_many :jobs
  has_many :employees, through: :jobs
  has_many :engagements, :foreign_key => 'customer_id', :dependent => :destroy
  has_many :contractors, :through => :engagements
  attr_accessible :name
  include PgSearch
  multisearchable :against => [:name]

end
