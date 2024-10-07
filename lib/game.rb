require_relative 'player'

class Game
  attr_accessor :current_player

  def initialize(player_one, player_two)
    @board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    @players = [player_one, player_two]
    @current_player = @players[0]
  end

  def swap_current_player
    @current_player = @current_player == @players[0] ? @players[1] : @players[0]
  end

  def check_for_winner
    result = false
    if check_vertical(@current_player.mark) || check_horizontal(@current_player.mark) || check_diagonal(@current_player.mark)
      result = true
      puts "#{@current_player.name} wins!"
    elsif @board.flatten.all? { |mark| %w[X Y].include?(mark) }
      puts "It's a tie!"
      result = true
    end
    result
  end

  def display_board
    puts '----------'
    puts "#{@board[0][0]} | #{@board[0][1]} | #{@board[0][2]}"
    puts '----------'
    puts "#{@board[1][0]} | #{@board[1][1]} | #{@board[1][2]}"
    puts '----------'
    puts "#{@board[2][0]} | #{@board[2][1]} | #{@board[2][2]}"
    puts '----------'
  end

  def mark_board(position)
    
    case position
    when 1
      @board[0][0] = @current_player.mark
    when 2
      @board[0][1] = @current_player.mark
    when 3
      @board[0][2] = @current_player.mark
    when 4
      @board[1][0] = @current_player.mark
    when 5
      @board[1][1] = @current_player.mark
    when 6
      @board[1][2] = @current_player.mark
    when 7
      @board[2][0] = @current_player.mark
    when 8
      @board[2][1] = @current_player.mark
    when 9
      @board[2][2] = @current_player.mark
    end
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
