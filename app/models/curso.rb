class Curso < ActiveRecord::Base
  has_many :alumno_curso
  has_many :alumno, :through => :alumno_curso
end
