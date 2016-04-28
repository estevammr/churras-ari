class CreateProductsPurchases < ActiveRecord::Migration
  def change
    create_table :products_purchases do |t|
    	t.belongs_to :product, index: true, foreign_key: true
    	t.belongs_to :purchase, index: true, foreign_key: true
      t.float      :quantity
      t.float      :value

    	t.timestamps null: false
    end
  end
end
