class Player
    attr_writer :name 
    attr_writer :playSymbol
    def initialize(name,playSymbol)
        @name=name
        @playSymbol=playSymbol
    end
end
