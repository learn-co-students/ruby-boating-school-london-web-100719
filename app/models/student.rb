class Student

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        Student.all << self
    end

    def self.all
        @@all
    end
    
    def add_boating_test(test_name, status, instructor)
        BoatingTest.new(self, test_name, status, instructor)
    end

    def self.find_student(name)
        Student.all.find {|student| student.name == name}
    end
    
    def tests
        BoatingTest.all.select {|test| test.student == self}
    end

    def number_of_tests
        tests.size
    end

    def number_of_pass
        tests.select {|test| test.status == "passed"}.size.to_f
    end

    def grade_percentage
        number_of_pass/number_of_tests
    end


end
