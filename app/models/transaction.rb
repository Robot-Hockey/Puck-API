class Transaction < ApplicationRecord
    # realacao trasnacao e mesa
    belongs_to :card
end
