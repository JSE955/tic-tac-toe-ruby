require_relative 'lib/game'
require_relative 'lib/player'

puts 'Welcome to Tic Tac Toe!'
puts 'Player one - enter your name:'
name = gets.chomp
player_one = Player.new(name, 'X')
puts 'Player two - enter your name: '
name = gets.chomp
player_two = Player.new(name, 'Y')
game = Game.new(player_one, player_two)
game_over = false
until game_over == true
  game.display_board
  puts "#{game.current_player.name} - choose a position"
  position = gets.chomp.to_i
  game.mark_board(position)
  game_over = game.check_for_winner
  game.swap_current_player
end
