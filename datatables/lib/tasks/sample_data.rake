namespace :db do
  desc "产生测试用的数据"
  task rexdata: :environment do
    make_products
  end
end

def make_products
  99.times do |n|
    name = "product-#{n+1}"
    price = n*100
    released_on = Time.now
    category = "category-#{n+1}"
    Product.create!(name: name,
                 price: price,
                 released_on: released_on,
                 category: category)
  end
end
