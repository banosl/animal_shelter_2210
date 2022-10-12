class Shelter
    attr_reader :name,
        :capacity,
        :pets

    def initialize (name, capacity)
        @name = name
        @capacity = capacity
        @pets = []
        @pet_count = []
    end

#method for adding pets
    def add_pet (pet)
        @pets << pet
    end

#method for calling pets with '!'
    def call_pets
        pets.each do |pet|
            pet.concat("!")
        end
    end

#method for checking if the shelter is over capacity
    def over_capacity?
        @pets.count > @capacity
       
    end
 
end