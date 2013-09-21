class Employer < ActiveRecord::Base


  has_many :engagements, :foreign_key => 'customer_id', :dependent => :destroy
  has_many :contractors, :through => :engagements
  attr_accessible :name, :address, :location, :phone, :email, :contact_person
  include PgSearch
  multisearchable :against => [:name, :address, :location, :phone, :email, :contact_person]

end
