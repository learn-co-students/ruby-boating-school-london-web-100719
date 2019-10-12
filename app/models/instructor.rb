require 'pry'

class Instructor

    attr_reader :name
    attr_accessor

    @@all = []

    def initialize(name)

        @name = name

        Instructor.all << self
        
    end

    def self.all

        @@all
        
    end

end
