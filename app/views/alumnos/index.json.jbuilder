json.array!(@alumnos) do |alumno|
  json.extract! alumno, :id, :nombre, :edad
  json.url alumno_url(alumno, format: :json)
end
