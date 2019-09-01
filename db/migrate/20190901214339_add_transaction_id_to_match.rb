class AddTransactionIdToMatch < ActiveRecord::Migration[6.0]
  def change
    add_column :matches, :transaction_id, :integer
    add_index  :matches, :transaction_id
  end
end
