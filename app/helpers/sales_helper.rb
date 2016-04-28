module SalesHelper

  def set_selected_client(current_client)
    return { selected: current_client.id } if current_client

    {}
  end

  def set_selected_product(current_product)
    return { selected: current_product.id } if current_product

    {}
  end

end
