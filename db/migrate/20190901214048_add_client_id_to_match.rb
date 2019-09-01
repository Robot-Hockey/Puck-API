class AddClientIdToMatch < ActiveRecord::Migration[6.0]
  def change
    add_column :matches, :client_id, :integer
    add_index  :matches, :client_id
  end
end
