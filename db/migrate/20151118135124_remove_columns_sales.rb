class RemoveColumnsSales < ActiveRecord::Migration
  def change
    remove_column :sales, :quantity_sale
    remove_column :sales, :value_sale
  end
end
