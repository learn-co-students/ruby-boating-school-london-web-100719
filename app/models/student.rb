require 'pry'

class Student

    attr_reader :name
    attr_accessor

    @@all = []

    def initialize(name)

        @name = name

        Student.all << self
        
    end

    def self.all

        @@all
        
    end

end
