class AddClientIdToCard < ActiveRecord::Migration[6.0]
  def change
    add_column :cards, :client_id, :integer
    add_index :cards, :client_id
  end
end
