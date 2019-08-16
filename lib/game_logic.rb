require 'set'

class GameLogic
    @@WINS=[[1,2,3],[1,4,7],[1,5,9],[2,5,8],[3,6,9],[3,5,7],[4,5,6],[7,8,9]]
    @@options=[]

    # operate based on moves made by player 
    def initialize(player_one,player_two,board)
        @player_one=player_one
        @player_two=player_two
        @board=board
    end

    def valid_move? ( input )
        unless input.is_a?(Integer) && (input < 9 || input > 0) && !@@options.include?(input)
          puts "Invalid Input"
          return false
        end
        true
    end

    def board_full?
      return false if @board.post.any?{|x| x.is_a?(Integer)} 

      true
    end

  
    def game_play
        puts " welcome to the tic-tac-toe game "
        @board.display
        puts "enter username for player_one, the first letter of this name will be your player character"
        @player_one=gets.chomp.to_s.capitalize
        user_id_1=@player_one[0].upcase
        puts "enter username for player_two, the first letter of this name will be your player character"
        @player_two=gets.chomp.to_s.capitalize
        user_id_2=@player_two[0].to_s.upcase

        a = 0
        until board_full?()
          @board.display
          option = 0
          current_player = a.even? ? @player_one : @player_two
          
          
          
          loop do
            puts "#{current_player}, select an option form 1...9"
            option = gets.chomp.to_i
            break if valid_move? option
          end

          character = (a.even? ? user_id_1 : user_id_2).to_s
          
          
          @board.post[option-1] = character if @board.post.include? option

          @@WINS = @@WINS.each do |moves|
            
            moves[moves.find_index(option)] = character if moves.include? option
            if Set.new(moves).length == 1
              puts "GAME OVER!"
              puts "#{current_player} Wins!"
              @board.display
              return
            end

          end
          
          @@options.push(option)
          a +=1
        end
      @board.display  
      puts "board full!"
      puts "STALEMATE!"
    end
end