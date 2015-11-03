class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :position
      t.string :text
      t.string :result
      t.string :white
      t.string :black

      t.timestamps null: false
    end
  end
end
