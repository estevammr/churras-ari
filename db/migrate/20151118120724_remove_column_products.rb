class RemoveColumnProducts < ActiveRecord::Migration
  def change
  	remove_column :products, :quantity_input, :float
  end
end
