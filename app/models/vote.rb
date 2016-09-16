class Vote < ApplicationRecord

  belongs_to :player
  delegate :game, to: :player

end
