class CreateLivres < ActiveRecord::Migration[7.0]
  def change
    create_table :livres do |t|
      t.string :titre
      t.string :auteur
      t.string :editeur
      t.float :isbn
      t.integer :stock

      t.timestamps
    end
  end
end
