class Game < ApplicationRecord
  attr_accessor :organiser_name

  has_many :players, dependent: :destroy
  has_one :organiser, class_name: 'Player'
  has_many :votes, through: :players

  before_save :default_values

  def default_values
    self.pin ||= rand(1000..9999).to_s
  end

end
