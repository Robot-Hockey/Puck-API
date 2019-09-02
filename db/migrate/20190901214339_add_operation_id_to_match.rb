class AddOperationIdToMatch < ActiveRecord::Migration[6.0]
  def change
    add_column :matches, :operation_id, :integer
    add_index  :matches, :operation_id
  end
end
