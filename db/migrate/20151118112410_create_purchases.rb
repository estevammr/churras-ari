class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.float :quantity_input
      t.float :value

      t.timestamps null: false
    end
  end
end
