class AddDetailsToEmployers < ActiveRecord::Migration
  def change
    add_column :employers, :address, :string
    add_column :employers, :location, :string
    add_column :employers, :phone, :string
    add_column :employers, :email, :string
    add_column :employers, :contact_person, :string
  end
end
