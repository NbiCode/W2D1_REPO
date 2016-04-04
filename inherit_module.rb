

module Flight

  def Flight.fly(another_animal)  
    if another_animal.canfly?  
      flyable =  "I am a #{another_animal} and I can fly"
    else 
      flyable = "I am a #{another_animal} and I can't fly" 
    return flyable
    end  
end
end