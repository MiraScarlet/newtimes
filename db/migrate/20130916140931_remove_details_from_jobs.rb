class RemoveDetailsFromJobs < ActiveRecord::Migration
  def up
    remove_column :jobs, :week_of
    remove_column :jobs, :week_of_end
  end

  def down
    add_column :jobs, :week_of_end, :datetime
    add_column :jobs, :week_of, :datetime
  end
end
