class RemoveColumnProductsValue < ActiveRecord::Migration
  def change
  	remove_column :products, :value, :float
  end
end
