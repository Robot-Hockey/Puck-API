class Card < ApplicationRecord
    # TODO Alter belongs to cliente and transactions
    belongs_to :client
    has_many :transactions
end
