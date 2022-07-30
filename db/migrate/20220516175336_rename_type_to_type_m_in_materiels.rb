class RenameTypeToTypeMInMateriels < ActiveRecord::Migration[7.0]
   def up
    rename_column :materiels, :type, :typeM
  end

  def down
    rename_column :materiels, :typeM, :type
  end
end
