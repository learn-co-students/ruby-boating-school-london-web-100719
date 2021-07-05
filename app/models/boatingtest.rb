class BoatingTest

    attr_reader :student, :instructor
    attr_accessor :test_name, :status 

    @@all = []

    def initialize(student, test_name, status, instructor)
        @student = student
        @test_name = test_name
        @status = status
        @instructor = instructor
        BoatingTest.all << self
    end

    def self.all
        @@all
    end

end
