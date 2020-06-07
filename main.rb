# frozen_string_literal: true

require './game.rb'

require './question.rb'

game = Game.new

until game.gameover?
  question = Question.new
  question.ask
  answer = gets.chomp.to_i
  question.check_answer?(answer)
  if question.check_answer?(answer)
    puts 'Great Job'
  else
    puts 'Nope'
    game.current_player.minus_life
  end
  game.turn
  game.status
end

# check if game has lives game.gameover?

# create a new question in side of the loop Question.new
# ask the question question.ask
# get the response gets.chomp
# compare the answer to input question.check_answer?
# feedback right or wrong /lives puts blah blah
# switch player game.turn
# status game.status game.turn
# if an instance lower case
