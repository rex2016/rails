json.array!(@products) do |product|
  json.extract! product, :id, :name, :price, :released_on, :category
  json.url product_url(product, format: :json)
end
