json.array!(@posts) do |post|
  json.extract! post, :id, :title, :description, :category, :download
  json.url post_url(post, format: :json)
end
