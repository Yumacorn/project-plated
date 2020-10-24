class Ranking < ApplicationRecord
  belongs_to :reviewer
  belongs_to :menu
  belongs_to :gold_star
  belongs_to :silver_star
  belongs_to :bronze_star
end
