class SaleItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :sale

  before_create :update_product_stock

  def update_product_stock
    product.quantity -= self.sale_quantity
    product.save
  end

end