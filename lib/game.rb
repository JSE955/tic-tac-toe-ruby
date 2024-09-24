class Game
  def initialize
    @board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  end

  def check_for_winner
    true
  end

  private

  def check_horizontal
    @board.each do |row|
      return true if row.all? { |mark| %w[X Y].include?(mark) }
    end
  end

  def check_vertical
    for col in 0..2
      for row in 0..2
        return true if [@board[row][col], @board[row][col], @board[row][col]]
      end
    end
  end
end
