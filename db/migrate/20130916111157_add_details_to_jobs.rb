class AddDetailsToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :week_of_end, :datetime
    add_column :jobs, :rate_of_pay, :string
  end
end
