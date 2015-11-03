class Game < ActiveRecord::Base

  belongs_to :white_player, :class_name => 'User', :foreign_key => 'user_white_id'
  belongs_to :black_player, :class_name => 'User', :foreign_key => 'user_black_id'
end
