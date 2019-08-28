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
          display_message("Invalid Input")
          return false
        end
        true
    end

    def board_full?()
      return false if @board.post.any?{|x| x.is_a?(Integer)} 

      true
    end

    def process_moves(option, character, current_player)
        @@WINS = @@WINS.each do |moves|
          
          moves[moves.find_index(option)] = character if moves.include? option
          if Set.new(moves).length == 1
            display_message("GAME OVER!")
            display_message("#{current_player} Wins!")
            @board.display
            return true
          end
        end
        return false
    end

    def continue_playing_until_player_wins_or_board_is_full()
        a = 0
        until board_full?()
            @board.display
            option = 0
            current_player = a.even? ? @player_one : @player_two
            
            loop do
                display_message("#{current_player}, select an option from 1...9")
                option = get_input()
                break if valid_move? option
            end
        
            character = (a.even? ? @user_id_1 : @user_id_2).to_s
            
            @board.post[option-1] = character if @board.post.include? option
        
            player_won = process_moves(option, character, current_player)
            if player_won
                return true #player won
            end
            
            @@options.push(option)
            a +=1
        end
        return false #board is full
    end
  
    def game_play()
        setup_users()

        board_is_full = continue_playing_until_player_wins_or_board_is_full()
        if board_is_full == false
            @board.display  
            display_message("board full!")
            display_message("STALEMATE!")
        end
    end
end
