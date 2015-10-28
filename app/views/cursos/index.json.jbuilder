json.array!(@cursos) do |curso|
  json.extract! curso, :id, :nombre, :nivel
  json.url curso_url(curso, format: :json)
end
