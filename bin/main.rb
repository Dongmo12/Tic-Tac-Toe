# frozen_string_literal: true

require_relative '../lib/board'
require_relative '../lib/player'
require_relative '../lib/game_logic'

board = Board.new
user_one = Player.new('user_one', 'O')
user_two = Player.new('user_two', 'T')

def receive_player_one_input
  display_message 'enter username for player_one, the first letter of this name
    will be your player character'
  @player_one = gets.chomp.to_s.capitalize
  @userid1 = @player_one[0].upcase
end

def receive_player_two_input
  display_message 'enter username for player_two, the first letter of this name
    will be your player character'
  @player_two = gets.chomp.to_s.capitalize
  @userid2 = @player_two[0].to_s.upcase
end

def setup_users
  display_message ' welcome to the tic-tac-toe game '
  @board.display
  receive_player_one_input
  receive_player_two_input
end

def display_message(input)
  puts input
end

def accept_single_character_input
  gets.chomp.to_i
end

GameLogic.new(user_one, user_two, board).game_play
