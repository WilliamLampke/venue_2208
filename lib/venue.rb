class Venue
    attr_reader :name, :capacity, :patrons
    
    def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
    end
    
    def add_patron(name)
        @patrons.push(name)
    end

    def yell_at_patrons
        capsnames = []
        @patrons.each do | patron |
            capsnames.push(patron.upcase)
        end
        p capsnames
    end

    def over_capacity
        if @patrons.length > @capacity
            p true
        else
            p false
    
        end
    end

    def kick_out
        @patrons.pop
    end
end

