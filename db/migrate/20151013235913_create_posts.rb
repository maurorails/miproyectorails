class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :titulo
      t.text :cuerpo

      t.timestamps
    end
  end
end
