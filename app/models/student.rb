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

    def add_boating_test(test_name, test_status, instructor)

        BoatingTest.new(test_name, instructor, self, test_status)
        
    end

    def self.find_student(name)

        Student.all.select {|student| student.name == name}[0]
        
    end

    def tests

        BoatingTest.all.select {|boating_test| boating_test.student == self}
        
    end

    def grade_percentage

        passed_tests = self.tests.select {|boating_test| boating_test.status == "Passed"}.size.to_f
        passed_tests / self.tests

    end

end
