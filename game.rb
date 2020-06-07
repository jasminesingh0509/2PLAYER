# frozen_string_literal: true

require './player.rb'

class Game
  attr_reader :P1, :P2, :current_player
  def initialize
    @P1 = Player.new('Player 1')
    @P2 = Player.new('Player 2')
    @current_player = @P1
  end

  def status
    puts "P1: #{@P1.lives}/3 vs P2: #{@P2.lives}/3"
  end

  def turn
    @current_player = if @current_player == @P1
                        @P2
                      else
                        @P1
                      end
   end

  def gameover?
    @P1.gameover || @P2.gameover
  end
end
