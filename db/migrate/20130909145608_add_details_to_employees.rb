class AddDetailsToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :last_name, :string
    add_column :employees, :gender, :string
    add_column :employees, :dnr, :boolean
    add_column :employees, :rate_of_pay, :string
  end
end
