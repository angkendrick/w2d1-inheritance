module Wings

  def fly
    "Flapping wings"
  end

end

class Animal

  attr_reader :eyes, :skin

  def initialize
    @eyes = 2
    @skin = true
  end

  def breathes
    "inhale - exhale.."
  end

end

class Mammal < Animal

  def warm_blooded
    "warm blooded"
  end

  def skeletal_system
    "bones ok!"
  end

end

class Birds < Animal

  include Wings

end

class Amphibian < Animal

  def cold_blooded
    "cold_blooded"
  end

end

class Primate < Animal

  def hands
    "the opposable thumb"
  end

  def legs
    "walking.. walking.."
  end

end

class Parrot < Birds

  def light_weight_bones
    "super light bones"
  end

end

class Frog < Amphibian

  def speak
    "croak!"
  end

end

class Bat < Mammal

  def speak
    "silence.. radar?"
  end

end

class Chimpanzee < Primate

  def speak
    "ooga-booga.."
  end

end

chimp = Chimpanzee.new()
batman = Bat.new()
kirmit = Frog.new()
woody = Parrot.new()

puts "chimp has eyes #{chimp.eyes}"
puts "chimp has skin? #{chimp.skin}"
puts "bat has eyes #{batman.eyes}"
puts "bat has skin? #{batman.skin}"
puts "frog has eyes #{kirmit.eyes}"
puts "frog has skin? #{kirmit.skin}"

puts "chimp breathes.. #{chimp.breathes}"
puts "bat breathes.. #{batman.breathes}"
puts "frog breathes.. #{kirmit.breathes}"

puts "chimp speaks.. #{chimp.speak}"
puts "bat speaks.. #{batman.speak}"
puts "frog speaks.. #{kirmit.speak}"

puts "parrot flies.. #{woody.fly}"

