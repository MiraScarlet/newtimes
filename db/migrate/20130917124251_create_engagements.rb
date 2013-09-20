class CreateEngagements < ActiveRecord::Migration
  def change
    create_table :engagements do |t|
      t.string :contractor_name
      t.string :customer_name
      t.string :shift
      t.string :rate_of_pay
      t.string :contractor_last_name
      t.date :start_week
      t.date :end_week
      t.integer :contractor_id
      t.integer :customer_id

      t.timestamps
    end
    add_index :engagements, :contractor_id
    add_index :engagements, :customer_id
  end
end
