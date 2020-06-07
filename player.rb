# frozen_string_literal: true

class Player
  attr_reader :name, :lives
  def initialize(name)
    @name = name
    @lives = 3
  end

  def minus_life
    @lives -= 1
end

  def gameover
    @lives == 0
  end
end
