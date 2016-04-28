class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.float :quantity_input
      t.float :quantity
      t.float :value

      t.timestamps null: false
    end
  end
end
