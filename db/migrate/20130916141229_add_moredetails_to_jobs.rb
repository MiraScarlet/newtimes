class AddMoredetailsToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :week_of, :date
    add_column :jobs, :week_of_end, :date
  end
end
