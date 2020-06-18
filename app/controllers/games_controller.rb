class GamesController < ApplicationController
  def generate_grid(grid_size)
    grid = []
    grid_size.times do
      grid << ('A'..'Z').to_a.sample
    end
    grid
  end

  def new
    @letters = generate_grid(10)
  end

  def check_grid?(attempt, grid)
    attempt.chars.all? do |letter|
      grid.include?(letter) && attempt.count(letter) <= grid.count(letter)
    end
  end

  def score
    # binding.pry
    # @answer = params
    # @word_exists = check_grid(@answer, @letter)
  end
end
