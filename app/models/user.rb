class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :white_games, foreign_key: 'user_white_id', class_name: 'Game'
	has_many :black_games, foreign_key: 'user_black_id', class_name: 'Game'



  def all_games
    Game.where('user_white_id = :user_id OR user_black_id = :user_id', user_id: self.id)
  end

  end