class AddTableIdToMatch < ActiveRecord::Migration[6.0]
  def change
    add_column :matches, :table_id, :integer
    add_index  :matches, :table_id
  end
end
