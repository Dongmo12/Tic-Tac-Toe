
require_relative '../lib/board'
require_relative '../lib/player'
require_relative '../lib/game_logic'


board= Board.new
user_one = Player.new('user_one','O') 
user_two = Player.new('user_two','T')
user_id_1 = ''
user_id_2 = ''

def setup_users
    puts " welcome to the tic-tac-toe game "
    @board.display
    puts "enter username for player_one, the first letter of this name will be your player character"
    @player_one=gets.chomp.to_s.capitalize
    @user_id_1=@player_one[0].upcase
    puts "enter username for player_two, the first letter of this name will be your player character"
    @player_two=gets.chomp.to_s.capitalize
    @user_id_2=@player_two[0].to_s.upcase
end

def display_message(input)
    puts input
end

def get_input()
    return gets.chomp.to_i
end

GameLogic.new(user_one, user_two, board).game_play