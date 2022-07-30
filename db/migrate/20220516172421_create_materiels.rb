class CreateMateriels < ActiveRecord::Migration[7.0]
  def change
    create_table :materiels do |t|
      t.string :marque
      t.string :type
      t.string :etat
      t.integer :nbrStock

      t.timestamps
    end
  end
end
