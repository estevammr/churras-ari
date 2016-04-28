class PurchaseItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :purchase

  before_create :update_product_stock

  def update_product_stock
    product.quantity += self.quantity
    product.save
  end

end
