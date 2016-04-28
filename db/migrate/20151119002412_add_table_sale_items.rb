class AddTableSaleItems < ActiveRecord::Migration
  def change
    create_table :sale_items do |t|
      t.belongs_to :product, index: true, foreign_key: true
      t.belongs_to :sale, index: true, foreign_key: true
      t.float      :sale_quantity
      t.float      :sale_value

      t.timestamps null: false
    end
  end
end
