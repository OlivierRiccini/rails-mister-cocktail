class RemovePictureToCocktails < ActiveRecord::Migration[5.1]
  def change
    remove_column :cocktails, :picture, :string
  end
end
