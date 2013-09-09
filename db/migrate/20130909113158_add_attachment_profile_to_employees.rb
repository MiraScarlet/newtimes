class AddAttachmentProfileToEmployees < ActiveRecord::Migration
  def self.up
    change_table :employees do |t|
      t.attachment :profile
    end
  end

  def self.down
    drop_attached_file :employees, :profile
  end
end
