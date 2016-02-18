class GameMaster < ActiveRecord::Base
  has_many :games
  has_many :parties, through: :games
  has_many :players, through: :parties

  validates :username, :email, :password_digest, presence: true
  validates :username, :email, uniqueness: true
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/, message: "Must be valid email address" }

  has_secure_password
end   
