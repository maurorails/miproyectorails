class CreateCursos < ActiveRecord::Migration
  def change
    create_table :cursos do |t|
      t.string :nombre
      t.integer :nivel

      t.timestamps
    end
  end
end
