class GameMaster < ActiveRecord::Base
  has_many :games
  has_many :parties, through: :games
  has_many :players, through: :parties
end   