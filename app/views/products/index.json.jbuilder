json.array!(@products) do |product|
  json.extract! product, :id, :quantity_input, :quantity, :value
  json.url product_url(product, format: :json)
end
