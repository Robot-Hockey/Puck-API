class Transaction < ApplicationRecord
    has_one :match
    belongs_to :card
end
