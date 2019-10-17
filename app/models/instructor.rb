require 'pry'
class Instructor

    attr_accessor :name

    @@all = [ ]


    def initialize(name)
        @name = name
        @@all << self
    end


    def self.all
        @@all
    end

    def pass_student(student, test_name)
        pass_test = BoatingTest.all.find  { |bt| bt.student == student && bt.test_name == test_name }
        
        if pass_test
            pass_test.test_status = "passed"
        else
            BoatingTest.new(student, test_name, self, test_status = "passed")
        end
    end

    def fail_student(student, test_name)
        #should take in a student instance and test name. If there is a BoatingTest whose name and student match the values passed in, this method should update the status of that BoatingTest to 'passed'. 
        fail_test = BoatingTest.all.find { |bt| bt.student == student && bt.test_name == test_name}
        if fail_test
            fail_test.test_status = "failed"
        else
            BoatingTest.new(student, test_name, self, test_status = "failed")
        end
    end

end
