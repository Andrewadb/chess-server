class CreateChals < ActiveRecord::Migration
  def change
    create_table :chals do |t|
      t.integer :challenger
      t.integer :challenged

      t.timestamps null: false
    end
  end
end
