require 'pry'

class BoatingTest

    attr_reader :name
    attr_accessor

    @@all = []

    def initialize(name)

        @name = name

        BoatingTest.all << self
        
    end

    def self.all

        @@all
        
    end

end
