class DropTableSaleItem < ActiveRecord::Migration
  def change
    drop_table :sale_items
  end
end
