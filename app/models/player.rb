class Player < ApplicationRecord

  belongs_to :game
  has_many :votes, dependent: :destroy


end
