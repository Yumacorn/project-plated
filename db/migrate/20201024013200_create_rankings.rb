class CreateRankings < ActiveRecord::Migration[6.0]
  def change
    create_table :rankings do |t|
      t.references :reviewer, null: false, foreign_key: true
      t.references :menu, null: false, foreign_key: true
      t.references :3_star, references: :items, null: false, foreign_key: {to_table: :items}
      t.references :2_star, references: :items, null: false, foreign_key: {to_table: :items}
      t.references :1_star, references: :items, null: false, foreign_key: {to_table: :items}

      t.timestamps
    end
  end
end
