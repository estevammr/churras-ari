class RenameProductsPurchases < ActiveRecord::Migration
  def up
    rename_table :products_purchases, :purchase_items
  end

  def down
    rename_table :purchase_items, :products_purchases
  end
end
