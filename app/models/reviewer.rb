class Reviewer < ApplicationRecord
    has_many :rankings
    has_many :menus, through: :rankings
    has_many :ranked_items, through: :rankings
end
