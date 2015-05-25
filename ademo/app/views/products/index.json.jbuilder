json.array!(@products) do |product|
  json.extract! product, :id, :name, :price, :release_on, :category
  json.url product_url(product, format: :json)
end
