# frozen_string_literal: true

class Question
  def initialize
    @num1 = rand(20)
    @num2 = rand(20)
    @sum = @num1 + @num2
  end

  def ask
    puts "#{@num1} + #{@num2}"
  end

  def check_answer?(input)
    @sum == input
  end
end
