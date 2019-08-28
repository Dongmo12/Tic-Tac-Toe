class Board
    attr_reader :post
     def initialize()
        @post = [ 1,2,3,4,5,6,7,8,9 ]
     end
 
    def display
        display_message ("\t|-------------------|")
        display_message ("\t|-----TIC-TAC-TOE---|")
        display_message ("\t|___________________|")
       
        display_message ("\t    #{@post[0]} | #{@post[1]} | #{@post[2]} ")
        display_message ("\t   ---|---|---")
        display_message ("\t    #{@post[3]} | #{@post[4]} | #{@post[5]} ")
        display_message ("\t   ---|---|---")
        display_message ("\t    #{@post[6]} | #{@post[7]} | #{@post[8]} " )
        display_message ("\t   ---|---|---")
    end
end
# w='K'

# BoardDisplay.display(arr)