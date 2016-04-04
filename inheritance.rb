
require_relative 'inherit_module'

class Animal
  attr_accessor :animal_name, :blooded
  
  def initialize(animal_name)
    @animal_name = animal_name
#    @legs = legs
  end

  def canfly?
    false
  end

end  

      class Mammal < Animal
        def initialize(animal_name,blooded="warmblooded")
          super(animal_name)
          @blooded = blooded
        end
      end 

        class Bats < Mammal 
            def canfly?
              true
            end
        end     
        class Primate < Mammal
        end

          class Chimpanzee < Primate
          end



      class Amphibian < Animal
        def initialize(animal_name, blooded = "coldblooded")
          super(animal_name)
          @blooded = blooded
        end
      end  
        class Frog < Amphibian
        end

      class Birds < Animal
        def initialize(animal_name, blooded = "warmblooded")
            super(animal_name)
            #@blooded = blooded
        end
        def canfly?
              true
            end
      end

        class Parrot < Birds 
        end






man = Animal.new("not_really_an_animal")
puts man.canfly?

bat_test = Bats.new("black_bat")
puts bat_test.canfly?

puts Flight.fly(man)

new_bird = Birds.new("Eagle")

puts Flight.fly(new_bird)
