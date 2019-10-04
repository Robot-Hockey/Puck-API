class AddCardToMatches < ActiveRecord::Migration[6.0]
  def change
    add_reference :matches, :card, null: false, foreign_key: true
  end
end
