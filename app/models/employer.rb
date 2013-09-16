class Employer < ActiveRecord::Base

  has_many :jobs
  has_many :employees, through: :jobs
  attr_accessible :name
  include PgSearch
  multisearchable :against => [:name]

end
