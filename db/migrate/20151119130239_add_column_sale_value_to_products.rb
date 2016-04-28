class AddColumnSaleValueToProducts < ActiveRecord::Migration
  def change
    add_column :products, :sale_value, :float
  end
end
