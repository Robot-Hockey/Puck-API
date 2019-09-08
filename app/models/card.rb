class Card < ApplicationRecord
    belongs_to :client
    has_many :operations
    has_many :matches
end
