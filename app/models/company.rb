class Company < ApplicationRecord
    has_many :users, dependent: :destroy
    has_many :tables, dependent: :destroy
end
