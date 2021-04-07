# frozen_string_literal: true

# All answers for this TDD example are in this file
# (FindNumber class and rspec tests )

# class for computer to find random number
class FindNumber
  attr_reader :min, :max, :answer, :guess

  def initialize(min, max, answer = RandomNumber.new(min, max), guess = nil)
    @min = min
    @max = max
    @answer = answer.value
    @guess = guess
  end

  def make_guess
    @guess = (min + max) / 2
  end

  def game_over?
    guess == answer
  end

  def update_range
    guess < answer ? @min = guess + 1 : @max = guess - 1
  end
end
