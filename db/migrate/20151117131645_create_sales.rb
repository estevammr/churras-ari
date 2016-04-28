class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.float :quantity_sale
      t.float :value_sale
    
      t.timestamps null: false
    end
  end
end
