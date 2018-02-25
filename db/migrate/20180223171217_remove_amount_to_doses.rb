class RemoveAmountToDoses < ActiveRecord::Migration[5.1]
  def change
    remove_column :doses, :amount, :integer
  end
end
