class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.integer :value
      t.string :public_id

      t.timestamps
    end
  end
end
