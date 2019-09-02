class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.integer :human_score
      t.integer :robot_score

      t.timestamps
    end
  end
end
