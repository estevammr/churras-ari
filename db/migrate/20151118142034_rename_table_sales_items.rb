class RenameTableSalesItems < ActiveRecord::Migration
  def up
    rename_table :sales_items, :sale_items
  end

  def down
    rename_table :sale_items, :sales_items
  end
end
