class CreateDoses < ActiveRecord::Migration[5.1]
  def change
    create_table :doses do |t|
      t.integer :amount
      t.references :ingredient, foreign_key: true
      t.text :description
      t.references :cocktail, foreign_key: true

      t.timestamps
    end
  end
end
