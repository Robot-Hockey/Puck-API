class Company < ApplicationRecord
    has_many :users, dependent: :destroy
    has_many :tables, dependent: :destroy
    has_many :clients, dependent: :destroy
end
