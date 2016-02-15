class GameMaster < ActiveRecord::Base
  has_many :games
  has_many :parties, through: :games
  has_many :players, through: :parties

  validates :username, :email, :password, presence: true
  validates :username, :email, uniqueness: true

  has_secure_password
end   