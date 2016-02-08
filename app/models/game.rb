class Game < ActiveRecord::Base
  has_one :party
  has_many :players, through: :party
  
  belongs_to :game_master
end
