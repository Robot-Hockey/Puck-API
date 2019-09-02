class AddCardIdToOperation < ActiveRecord::Migration[6.0]
  def change
    add_column :operations, :card_id, :integer
    add_index :operations, :card_id
  end
end
