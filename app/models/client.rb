class Client < ApplicationRecord
    # belongs to company
    has_many :cards
end
