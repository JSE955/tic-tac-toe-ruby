require_relative 'lib/game'
require_relative 'lib/player'

one = Player.new('Jordan', 'X')
two = Player.new('Izzy', 'Y')
game = Game.new(one, two)
puts game.current_player.name
game.swap_current_player
puts game.current_player.name
