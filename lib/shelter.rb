class Shelter
    attr_reader :name,
        :capacity,
        :pets

    def initialize (name, capacity)
        @name = name
        @capacity = capacity
        @pets = []
    end

#method for adding pets
    def add_pet (pet)
        @pets << pet
    end
 
end