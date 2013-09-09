class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :phone
      t.string :job_details
      t.string :shift
      t.string :message

      t.timestamps
    end
  end
end
