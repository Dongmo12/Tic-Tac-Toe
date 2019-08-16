class Board
    attr_accessor :post
     def initialize()
        @post = [ 1,2,3,4,5,6,7,8,9 ]
     end
    def display
         puts "\t|-------------------|"
         puts "\t|-----TIC-TAC-TOE---|"
         puts "\t|___________________|"
       
         puts "\t    #{@post[0]} | #{@post[1]} | #{@post[2]} "
         puts "\t   ---|---|---"
         puts "\t    #{@post[3]} | #{@post[4]} | #{@post[5]} "
         puts "\t   ---|---|---"
         puts "\t    #{@post[6]} | #{@post[7]} | #{@post[8]} " 
         puts "\t   ---|---|---"
    end

end
# w='K'

# BoardDisplay.display(arr)