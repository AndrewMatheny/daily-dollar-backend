class User < ApplicationRecord
    has_many :budgets
    has_many :transactions

    validates :indiv, presence: true
    validates :indiv, uniqueness: true
end
