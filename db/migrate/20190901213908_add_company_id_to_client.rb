class AddCompanyIdToClient < ActiveRecord::Migration[6.0]
  def change
    add_column :clients, :company_id, :integer
    add_index  :clients, :company_id
  end
end
