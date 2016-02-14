class Game < ActiveRecord::Base
  has_one :party, dependent: :destroy
  has_many :players, through: :party, dependent: :destroy
  has_many :hooks, dependent: :destroy
  belongs_to :game_master

  validates :description, :party, presence: true
end
