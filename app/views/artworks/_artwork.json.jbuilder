json.extract! artwork, :id, :title, :description, :price, :created_at, :updated_at
json.url artwork_url(artwork, format: :json)
