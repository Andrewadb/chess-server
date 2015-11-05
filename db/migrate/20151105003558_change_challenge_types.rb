class ChangeChallengeTypes < ActiveRecord::Migration
  def change
  	add_column :challenges, :challenger_id,  :integer
  	add_column :challenges, :challenged_id,  :integer

  end
end
