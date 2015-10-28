class CreateAlumnoCursos < ActiveRecord::Migration
  def change
    create_table :alumno_cursos do |t|
      t.references :alumno, index: true
      t.references :curso, index: true

      t.timestamps
    end
  end
end
