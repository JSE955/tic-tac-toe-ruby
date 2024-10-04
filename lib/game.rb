class Game
  def initialize
    @board = [['X', 'X', 'X'], ['X', 'X', 'Y'], ['X', 8, 'Y']]
  end

  def check_for_winner(player_mark)
    result = false
    result = true if check_vertical(player_mark) || check_horizontal(player_mark) || check_diagonal(player_mark)
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

  def check_diagonal(player_mark)
    player_win = [player_mark, player_mark, player_mark]
    result = false
    result = true if [@board[0][0], @board[1][1], @board[2][2]] == player_win || [@board[0][2], @board[1][1], @board[2][0]] == player_win
    result
  end
end

my_game = Game.new
puts my_game.check_for_winner('X')