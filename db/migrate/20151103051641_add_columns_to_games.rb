class AddColumnsToGames < ActiveRecord::Migration
  def change

  	change_table :games do |t|
	  
	  t.integer :user_white_id
	  t.integer :user_black_id

	end
  end
end
