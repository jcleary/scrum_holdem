class Vote < ApplicationRecord

  belongs_to :player
  delegate :game, to: :player

  scope :current, -> { where(current: true) }

  after_create :clear_other_votes

  def clear_other_votes
    player.votes.current.where.not(id: id).update_all(current: false)
  end

end
