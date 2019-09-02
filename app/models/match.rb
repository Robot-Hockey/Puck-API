class Match < ApplicationRecord
    belongs_to :table
    belongs_to :client
    has_one :operation
end
