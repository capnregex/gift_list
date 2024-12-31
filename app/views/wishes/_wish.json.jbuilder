json.extract! wish, :id, :wisher_id, :title, :url, :body, :created_at, :updated_at
json.url wish_url(wish, format: :json)
