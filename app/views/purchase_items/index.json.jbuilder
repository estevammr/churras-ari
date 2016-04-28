json.array!(@purchase_items) do |purchase_item|
  json.extract! purchase_item, :id
  json.url purchase_item_url(purchase_item, format: :json)
end
