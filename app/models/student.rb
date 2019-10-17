class Student
require 'pry'

        attr_reader :name

    @@all = [ ]

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(test_name, test_status, instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end

    def self.find_student(name)
        @@all.select { |s| s.name == name}
    end

    def student_tests
        BoatingTest.all.select { |bt| bt.student == self}
    end

    def grade_percentage
        #should return the percentage of tests that the student has passed, a Float
        passed_tests = student_tests.select { |bt| bt.test_status == "passed"}.count
        student_test = student_tests.count
        
        grade_percentage = (passed_tests.to_f / student_test.to_f) * 100
    end
end
