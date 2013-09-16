class AddLnameToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :contractor_lname, :string
  end
end
