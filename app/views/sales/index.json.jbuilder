json.array!(@sales) do |sale|
  json.extract! sale, :id, :quantity_sale, :value_sale
  json.url sale_url(sale, format: :json)
end
