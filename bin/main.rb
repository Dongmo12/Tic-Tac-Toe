
require_relative '../lib/board'
require_relative '../lib/player'
require_relative '../lib/game_logic'


board= Board.new
user_one = Player.new('user_one','O').name
user_two = Player.new('user_two','T').name

GameLogic.new(user_one, user_two, board).game_play