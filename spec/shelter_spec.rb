require 'rspec'
require './lib/shelter'

RSpec.describe Shelter do

  # Iteration 1
  describe '#initialize' do
    it 'is a Shelter' do

      shelter = Shelter.new('Denver Animal Shelter', 5)
      expect(shelter).to be_a(Shelter)
    end

    it 'can read the name' do

      shelter = Shelter.new('Denver Animal Shelter', 5)
      expect(shelter.name).to eq('Denver Animal Shelter')
    end

    it 'can read the capacity' do

      shelter = Shelter.new('Denver Animal Shelter', 5)
      expect(shelter.capacity).to eq(5)
    end

    it 'has no pets by default' do

      shelter = Shelter.new('Denver Animal Shelter', 5)
      expect(shelter.pets).to eq []
    end
  end

  # Iteration 2
  describe '#add_pet' do
    it 'returns a list of pets' do

      shelter = Shelter.new('Denver Animal Shelter', 5)
      shelter.add_pet('Salem')
      shelter.add_pet('Beethoven')
      shelter.add_pet('Spot')
      shelter.add_pet('Jonesy')

      expect(shelter.pets).to eq(['Salem', 'Beethoven', 'Spot', 'Jonesy'])
    end
  end 

  describe '#call_pets' do
      it 'returns a list of names with exclamation points appended' do 

        shelter = Shelter.new('Denver Animal Shelter', 5)
        shelter.add_pet('Salem')
        shelter.add_pet('Beethoven')
        shelter.add_pet('Spot')
        shelter.add_pet('Jonesy')

        expect(shelter.call_pets).to eq(['Salem!', 'Beethoven!', 'Spot!', 'Jonesy!'])
      end
    end

# Iteration 3

    describe '#over_capacity?' do
      it 'returns false if the shelter has fewer pets than the capacity' do
        
        #Test 1

        shelter = Shelter.new('Denver Animals Shelter', 3)

        shelter.add_pet ('Salem')
        shelter.add_pet ('Beethoven')

        shelter.over_capacity?

        expect(shelter.over_capacity?).to be false
      
      end
    end

    describe '#over_capacity?' do
      it 'returns true if the shelter has more pets than the capacity' do

        #Test 2

        shelter = Shelter.new('Denver Animals Shelter', 3)

        shelter.add_pet ('Salem')
        shelter.add_pet ('Beethoven')

        shelter.add_pet ('Luca')
        shelter.add_pet ('Kuma')
        shelter.add_pet ('Michaela')
        shelter.add_pet ('Pablo')

        shelter.over_capacity?

        expect(shelter.over_capacity?).to be true

      end
    end












end