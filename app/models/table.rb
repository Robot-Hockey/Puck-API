class Table < ApplicationRecord
    belongs_to :company
    has_many :matches
end
