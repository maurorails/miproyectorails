class Alumno < ActiveRecord::Base
  has_many :alumno_curso
  has_many :curso, :through => :alumno_curso
end
