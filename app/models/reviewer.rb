class Reviewer < ApplicationRecord
    has_many :rankings
    has_many :menus, through: :rankings
end
