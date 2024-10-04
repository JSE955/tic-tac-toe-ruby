class Game
  def initialize
    @board = [['X', 'X', 'Y'], ['X', 'Y', 'Y'], ['Y', 8, 9]]
  end

  def check_for_winner(player_mark)
    result = false
    result = true if check_vertical(player_mark) || check_horizontal(player_mark)
    result
  end

  private

  def check_horizontal(player_mark)
    result = false
    @board.each do |row|
      result = true if row.all? { |mark| mark == player_mark }
    end
    result
  end

  def check_vertical(player_mark)
    result = false
    for col in 0..2
      result = true if [@board[0][col], @board[1][col], @board[2][col]] == [player_mark, player_mark, player_mark]
    end
    result
  end
end

my_game = Game.new
puts my_game.check_for_winner('X')