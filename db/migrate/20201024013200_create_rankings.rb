class CreateRankings < ActiveRecord::Migration[6.0]
  def change
    create_table :rankings do |t|
      t.references :reviewer, null: false, foreign_key: true
      t.references :menu, null: false, foreign_key: true
      t.references :3_star, null: false, foreign_key: true
      t.references :2_star, null: false, foreign_key: true
      t.references :1_star, null: false, foreign_key: true

      t.timestamps
    end
  end
end
