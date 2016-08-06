json.extract! shop, :id, :itemname, :metakeywords, :metadescription, :metaurl, :metaimage, :content, :price, :available, :created_at, :updated_at
json.url shop_url(shop, format: :json)