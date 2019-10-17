require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

s1 = Student.new("Bogo")
s2 = Student.new("Li")
s3 = Student.new("Faris")

i1 = Instructor.new("sergio")
i2 = Instructor.new("joe")
i3 = Instructor.new("dan")

# b1 = BoatingTest.new(s1, "code_c", "failed", i1)
b2 = BoatingTest.new(s1, "code_c", i2, "failed" )
b3 = BoatingTest.new(s2, "code_c", i1, "failed" )
b4 = BoatingTest.new(s2, "code_e", i2, "passed" )

i1.pass_student(s1, "code_d")
i2.pass_student(s1, "code_b")


s1.grade_percentage



# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

