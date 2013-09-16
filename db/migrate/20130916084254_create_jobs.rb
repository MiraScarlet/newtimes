class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :employee_id
      t.integer :employer_id
      t.string :customer
      t.string :contractor
      t.datetime :week_of
      t.string :shift

      t.timestamps
    end
  end
end
