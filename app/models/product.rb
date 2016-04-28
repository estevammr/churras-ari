class Product < ActiveRecord::Base
  has_many :purchase_items
	has_many :purchases, through: :purchase_items
  has_many :sale_items
  has_many :sales, through: :sale_items
end
