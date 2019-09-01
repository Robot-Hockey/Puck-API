class AddCompanyIdToTable < ActiveRecord::Migration[6.0]
  def change
    add_column :tables, :company_id, :integer
    add_index  :tables, :company_id
  end
end
