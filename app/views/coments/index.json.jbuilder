json.array!(@coments) do |coment|
  json.extract! coment, :id, :description, :usuario, :posts_id
  json.url coment_url(coment, format: :json)
end
