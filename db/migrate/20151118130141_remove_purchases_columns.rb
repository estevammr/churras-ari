class RemovePurchasesColumns < ActiveRecord::Migration
  def change
    remove_column :purchases, :value
    remove_column :purchases, :quantity_input
  end
end
