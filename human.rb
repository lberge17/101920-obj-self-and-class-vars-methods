# self keyword
# dynamic
# represents what the code is acting on
# whoami
# special pseudo-variable that points to object that owns the code
require "pry"
class Human
    attr_accessor :name, :age
    @@all = []

    def initialize(name, age)
        @name, @age = name, age

        @@all << self
    end

    def self.new_from_hash(hash)
        Human.new(hash[:name], hash[:age])
    end

    def self.youngest_to_oldest
        @@all.sort_by {|human| human.age }
    end

    def self.find_by_name(name)
        @@all.find {|human| human.name == name }
    end

    # class << self
        # def new_from_hash(hash)
        #     Human.new(hash[:name], hash[:age])
        # end
    # end
end

Human.new_from_hash({name: "Laura", age: 24})
Human.new("Tyler", 32)

class Dog
    def bark
        puts "woof"
    end

    def barkalot
        3.times do
            bark
        end
        instance_method
        self.class.class_method
    end

    def instance_method
        puts "hi"
    end

    def self.class_method
        "hello"
    end
end

binding.pry