class Game
  def initialize
    @board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  end

  def check_for_winner(player_mark)
    result = false
    result = true if check_vertical(player_mark) || check_horizontal(player_mark) || check_diagonal(player_mark)
    result
  end

  def display_board
    puts "#{@board[0][0]} | #{@board[0][1]} | #{@board[0][2]}"
    puts '----------'
    puts "#{@board[1][0]} | #{@board[1][1]} | #{@board[1][2]}"
    puts '----------'
    puts "#{@board[2][0]} | #{@board[2][1]} | #{@board[2][2]}"
    puts '----------'
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
my_game.display_board
