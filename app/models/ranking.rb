class Ranking < ApplicationRecord
  belongs_to :reviewer
  belongs_to :menu
  belongs_to :3_star
  belongs_to :2_star
  belongs_to :1_star
end
