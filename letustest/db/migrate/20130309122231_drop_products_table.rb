class DropProductsTable < ActiveRecord::Migration
  def up
    drop_table :request_quotes
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
