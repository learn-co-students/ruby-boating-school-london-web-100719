class Student
  attr_accessor :first_name
  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
  end

  def self.find_student(name)
    self.all.select{ |student| student.first_name == name }
  end

  def tests
    BoatingTest.all.select { |test| test.student == self }
  end

  def grade_percentage
    (100 * self.tests.select { |test| test.test_status == 'passed'}.length / self.tests.length).to_f
  end
end
