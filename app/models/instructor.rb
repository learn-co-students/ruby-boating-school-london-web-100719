class Instructor

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        Instructor.all << self
    end

    def self.all
        @@all
    end

    def tests
        BoatingTest.all.select {|test| test.instructor == self}
    end

    def find_student(student)
        tests.select {|test| test.student.name == student}
    end

    def find_student_test(student,test_name)
        find_student(student).find {|test| test.test_name == test_name}
    end

    def pass_student(student, test_name)
        b_t = find_student_test(student, test_name)
        if b_t
            b_t.status = "passed"
        else
        BoatingTest.new(student, test_name, "passed", self)
        end
    end

    def pass_student(student, test_name)
        b_t = find_student_test(student, test_name)
        if b_t
            b_t.status = "failed"
        else
        BoatingTest.new(student, test_name, "failed", self)
        end
    end

end
