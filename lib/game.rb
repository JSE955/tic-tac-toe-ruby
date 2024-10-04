class Game
  def initialize
    @board = [['X', 'X', 'Y'], ['Y', 'Y', 'Y'], [7, 8, 9]]
  end

  def check_for_winner(player_mark)
    check_horizontal(player_mark)
  end

  private

  def check_horizontal(player_mark)
    result = false
    @board.each do |row|
      result = true if row.all? { |mark| mark == player_mark }
    end
    result
  end

  def check_vertical
    for col in 0..2
      for row in 0..2
        return true if [@board[row][col], @board[row][col], @board[row][col]]
      end
    end
  end
end

my_game = Game.new
puts my_game.check_for_winner('Y')