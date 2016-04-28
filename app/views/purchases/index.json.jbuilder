json.array!(@purchases) do |purchase|
  json.extract! purchase, :id, :quantity_input, :value
  json.url purchase_url(purchase, format: :json)
end
