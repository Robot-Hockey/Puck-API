class AddCardIdToTransaction < ActiveRecord::Migration[6.0]
  def change
    add_column :transactions, :card_id, :integer
    add_index :transactions, :card_id
  end
end
