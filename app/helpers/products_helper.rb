module ProductsHelper
  
  def products_for_select(products)
    products.map do |product|
      [product.name, product.id]
    end
  end
  
end
