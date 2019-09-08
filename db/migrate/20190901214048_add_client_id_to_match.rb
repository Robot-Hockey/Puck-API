class AddPublicIdToMatch < ActiveRecord::Migration[6.0]
  def change
    add_column :matches, :public_id, :string
    add_index  :matches, :public_id
  end
end
