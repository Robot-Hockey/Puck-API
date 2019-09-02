class CreateOperations < ActiveRecord::Migration[6.0]
  def change
    create_table :operations do |t|
      t.integer :value
      
      t.timestamps
    end
  end
end
