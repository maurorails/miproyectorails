json.array!(@posts) do |post|
  json.extract! post, :id, :titulo, :cuerpo
  json.url post_url(post, format: :json)
end
