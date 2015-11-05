class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :white_games, foreign_key: 'user_white_id', class_name: 'Game'
	has_many :black_games, foreign_key: 'user_black_id', class_name: 'Game'
  has_many :outgoing_challenges, foreign_key: 'challenger_id', class_name: 'Challenge'
  has_many :incoming_challenges, foreign_key: 'challenged_id', class_name: 'Challenge'

  def all_games
    Game.where('user_white_id = :user_id OR user_black_id = :user_id', user_id: self.id)
  end

  def all_challenges
    Challenge.where('challenger_id = :user_id OR challenged_id = :user_id', user_id: self.id)
  end

  end