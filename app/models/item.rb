class Item < ApplicationRecord
  belongs_to :menu
  has_many :menus
  has_many :reviewers, through: :rankings
  has_many :rankings, through: :menus
end
