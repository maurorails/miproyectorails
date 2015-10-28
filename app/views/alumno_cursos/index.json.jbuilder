json.array!(@alumno_cursos) do |alumno_curso|
  json.extract! alumno_curso, :id, :alumno_id, :curso_id
  json.url alumno_curso_url(alumno_curso, format: :json)
end
