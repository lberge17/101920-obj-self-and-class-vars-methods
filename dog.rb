require "pry"
class Dog
    # constant
    ALL = []
    # class variable - "leaky inheritance"
    @@all
    # class instance variable
    @all
    
    def initialize
        ALL << self
    end

    def self.all
        ALL
    end
end

# Lab class inherits from Dog class
class Lab < Dog
    @all = []
    
    def initialize
        self.class.all << self
    end

    def self.all
        @all
    end
end

# Chihuahua class inherits from Dog class
class Chihuahua < Dog
    @@all = []
    
    def initialize
        @@all << self
    end

    def self.all
        @@all
    end
end


binding.pry