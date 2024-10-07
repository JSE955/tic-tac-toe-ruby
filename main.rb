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

game.display_board
