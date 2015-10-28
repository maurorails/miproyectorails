class CreateComents < ActiveRecord::Migration
  def change
    create_table :coments do |t|
      t.text :description
      t.string :usuario
      t.references :posts, index: true

      t.timestamps
    end
  end
end
