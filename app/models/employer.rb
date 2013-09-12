class Employer < ActiveRecord::Base
  attr_accessible :name
  include PgSearch
  multisearchable :against => [:name]

end
