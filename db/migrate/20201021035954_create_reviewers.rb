class CreateReviewers < ActiveRecord::Migration[6.0]
  def change
    create_table :reviewers do |t|
      t.string :username
      t.string :password_digest
      t.string :email
      t.integer :age

      t.timestamps
    end
  end
end
