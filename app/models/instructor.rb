class Instructor
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def find_test(student, test_name)
    # This will return either a BoatingTest instance, or nil if there is no BoatingTest instance for the given student and test_name.
    BoatingTest.all.select { |test| test.student == student && test.test_name == test_name }[0]
  end

  def pass_student(student, test_name)
    # If there is a test with this student and test name, then pass the student
    if find_test(student, test_name)
      find_test(student, test_name).test_status = 'passed'
      find_test(student, test_name)
    else
      BoatingTest.new(student, test_name, 'passed', self)
    end
  end
  
  def fail_student(student, test_name)
    if find_test(student, test_name)
      find_test(student, test_name).test_status = 'failed'
      find_test(student, test_name)
    else
      BoatingTest.new(student, test_name, 'failed', self)
    end
  end

end