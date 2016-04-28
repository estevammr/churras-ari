class Purchase < ActiveRecord::Base
	has_many :products, through: :purchase_items
  has_many :purchase_items
end
