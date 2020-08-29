#---------------------------------------------------
# Brice Widger
# 12/20/19
# Assignment 7.1
#---------------------------------------------------


class Animal
    # attribute writer to set the name
    def name= (name)
        @name = name;
    end
    
    #attribute writer to set the type
    def type= (type)
        @type = type;
    end
    
    # additonal property of height
    def height= (height)
        @height = height;
    end
    
    # additional property of weight
    def weight= (weight)
        @weight = weight;
    end
    
    # first method, "talk" which prints "Grrrrr!!!"
    def talk
        puts "Grrrrr!!!";
    end
    
    # second method, "identify", which prints the type and name of the object
    def identify
        puts "Type: #@type";
        puts "Name: #@name";
        puts "Height: #@height";
        puts "Weight: #@weight";
    end
    end
     
    # instantiate two Animal objects named largeAnimal, smallAnimal respectively
    largeAnimal = Animal.new;
    smallAnimal = Animal.new;
    
    # assign the name Leo to the largeAnimal object and then assign a value of Lion to the type variable.
    largeAnimal.name = "Leo";
    largeAnimal.type = "Lion";
    largeAnimal.height = "3 feet 9 inches";
    largeAnimal.weight = "420 lbs";
    
    # assign the name Marvin to the smallAnimal object and then assign it a type value of Mouse
    smallAnimal.name = "Marvin";
    smallAnimal.type = "Mouse";
    smallAnimal.height = "2 inches";
    smallAnimal.weight = "0.68 oz";
    
    # execute both of the Animal class’s methods twice, once for each object.
    largeAnimal.talk();
    largeAnimal.identify();
    
    smallAnimal.talk();
    smallAnimal.identify();

    
#------------------------------------------
#new Lion subclass
#------------------------------------------
class Lion < Animal
        
    # first method of Lion subclass, "talk" which prints "Roar!!!"
    def talk
        puts "Roar!!!";
    end
end

    # creating object of Lion subclass
    lion_obj = Lion.new
  
    # execute methods twice, once for each object
    lion_obj.talk();
    largeAnimal.identify();
    

#------------------------------------------
#new Mouse subclass
#------------------------------------------
class Mouse < Animal

    # first method of Mouse subclass, "talk" which prints "Eeek!!!"
    def talk
        puts "Eeek!!!";
    end
end

    # creating object of Mouse subclass
    mouse_obj = Mouse.new

    # execute methods twice, once for each object
    mouse_obj.talk();
    smallAnimal.identify();

#------------------------------------------
#new Homosapien class
#------------------------------------------
class Homosapien < Animal

    # attribute writer to set the name
    def name= (name)
        @name = name;
    end
    
    #attribute writer to set the type
    def type= (type)
        @type = type;
    end
    
    # additonal property of height
    def height= (height)
        @height = height;
    end
    
    # additional property of weight
    def weight= (weight)
        @weight = weight;
    end

    # first method, "talk" which prints "Wahhh!!!"
    def talk
        puts "Duuudde!!!";
    end
    
    # method "identify", which prints the type and name of the object
    def identify
        puts "Type: #@type";
        puts "Name: #@name";
        puts "Height: #@height";
        puts "Weight: #@weight";
    end
    
end

#creating object of humanAnimal
humanAnimal = Homosapien.new

 # assign the name Jerry to the humanAnimal object and then assign it a type value of humanAnimal
 humanAnimal.name = "Jerry";
 humanAnimal.type = "homosapien";
 humanAnimal.height = "5 feet 11 inches";
 humanAnimal.weight = "178 lbs";

 # execute methods twice, once for each object
 humanAnimal.talk();
 humanAnimal.identify();

#------------------------------------------
#new Child class
#------------------------------------------

class Child < Homosapien

    # attribute writer to set the name
    def name= (name)
        @name = name;
    end
    
    #attribute writer to set the type
    def type= (type)
        @type = type;
    end
    
    # additonal property of height
    def height= (height)
        @height = height;
    end
    
    # additional property of weight
    def weight= (weight)
        @weight = weight;
    end

    # first method, "talk" which prints "Wahhh!!!"
    def talk
        puts "Wahhh!!!";
    end
    
    # method "identify", which prints the type and name of the object
    def identify
        puts "Type: #@type";
        puts "Name: #@name";
        puts "Height: #@height";
        puts "Weight: #@weight";
    end

end

    #instance of Child named smallHuman
    smallHuman = Child.new

 # assign the name Jerry to the humanAnimal object and then assign it a type value of humanAnimal
 smallHuman.name = "Timmy";
 smallHuman.type = "homosapien";
 smallHuman.height = "47.7 inches";
 smallHuman.weight = "49.5 lbs";

 # execute methods twice, once for each object
 smallHuman.talk();
 smallHuman.identify();
