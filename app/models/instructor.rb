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

    def tests

        BoatingTest.all.select {|boating_test| boating_test.instructor == self}
        
    end

    def pass_student(student, test_name)

        valid_test = self.tests.select {|boating_test| boating_test.name == test_name && boating_test.student == student}[0]

        if !valid_test

            BoatingTest.new(test_name, self, student, "Passed")
            
            
        else

            valid_test.status = "Passed"
            
        end

    end

    def fail_student(student, test_name)

        valid_test = self.tests.select {|boating_test| boating_test.name == test_name && boating_test.student == student}[0]

        if !valid_test

            BoatingTest.new(test_name, self, student, "Failed")
            
            
        else

            valid_test.status = "Failed"
            valid_test
            
        end

    end

end
