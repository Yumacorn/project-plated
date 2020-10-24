class Menu < ApplicationRecord
    has_many :rankings
    has_many :reviewers, through: :rankings
    has_many :items
end
