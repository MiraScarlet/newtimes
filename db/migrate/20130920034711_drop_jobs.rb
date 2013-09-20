class DropJobs < ActiveRecord::Migration

    def up
      drop_table :jobs
    end

    def down
      raise ActiveRecord::IrreversibleMigration
    end

end
