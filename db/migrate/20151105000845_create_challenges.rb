class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :challenger
      t.references :user, index: true, foreign_key: true
      t.string :challenged
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
