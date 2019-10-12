require 'pry'

class BoatingTest

    attr_reader :name, :instructor, :student
    attr_accessor :status

    @@all = []

    def initialize(name, instructor, student, status = "Pending")

        @name = name
        @status = status
        @instructor = instructor
        @student = student

        BoatingTest.all << self
        
    end

    def self.all

        @@all
        
    end

    def self.passing_students(test_name)

        BoatingTest.all.select {|t| t.name == test_name}.select {|t| t.status == "Passed"}.map {|t| t.student}
        
    end

    def self.failing_students(test_name)

        BoatingTest.all.select {|t| t.name == test_name}.select {|t| t.status == "Failed"}.map {|t| t.student}
        
    end

end
