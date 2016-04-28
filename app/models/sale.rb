class Sale < ActiveRecord::Base
  has_many   :sale_items
  belongs_to :client
  has_many   :products, through: :sale_items

end
