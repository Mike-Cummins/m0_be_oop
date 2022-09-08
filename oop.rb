# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string
class Unicorn
  def initialize(name)
    @name = name
    @color = "silver"
  end
  def say(saying)
    "*~*" + saying + "*~*"
  end
end
unicorn1 = Unicorn.new("Charlie")
p unicorn1
p unicorn1.say("yay")

#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false
class Vampire
  def initialize(name, pet = "bat")
    @name = name
    @pet = pet
    @thirsty = true
  end
  def drink
    @thirsty = false
    "Is #{@name} thirsty? #{@thirsty}."
  end
end
vampire1 = Vampire.new("Doug")
p vampire1
vampire1.drink
p vampire1
#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry
class Dragon
  def initialize(name, rider, color)
    @name = name
    @rider = rider
    @color = color
    @is_hungry = true
    @meals = 0
  end
  def eat
    @meals += 1
    if @meals >= 4
      @is_hungry = false
    end
  end
end

dragon1 = Dragon.new("Trogdor", "The Sneak", "green")
p dragon1
dragon1.eat
dragon1.eat
dragon1.eat
dragon1.eat
p dragon1
#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.
class Hobbit
  def initialize(name, disposition)
    @name = name
    @disposition = disposition
    @age = 0
    @is_adult = false
    @is_old = false
    @has_ring = false
  end
  def celebrate_birthday
    @age += 1
  if @age >= 33 && @age < 101
    @is_adult = true
  elsif @age >= 101
    @is_old = true
    @is_adult = true
  end
end
  def ring_bearer?
  if @name == "frodo"
    @has_ring = true
  else @has_ring = false
  end
end
end

hobbit1 = Hobbit.new("frodo", "Jolly")
p hobbit1
hobbit1.celebrate_birthday
hobbit1.ring_bearer?
p hobbit1
