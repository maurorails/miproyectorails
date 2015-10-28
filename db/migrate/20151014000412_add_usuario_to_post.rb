class AddUsuarioToPost < ActiveRecord::Migration
  def change
    add_column :posts, :usuario, :string
  end
end
