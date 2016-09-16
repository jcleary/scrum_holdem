class Game < ApplicationRecord

  attr_accessor :organiser_name

  before_save :default_values

  def default_values
    self.pin ||= rand(1000..9999).to_s
  end

end
