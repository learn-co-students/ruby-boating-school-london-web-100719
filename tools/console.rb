require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

stud1 = Student.new("name1")
stud2 = Student.new("name2")
stud3 = Student.new("name3")

instr1 = Instructor.new("instr1")
instr2 = Instructor.new("instr2")
instr3 = Instructor.new("instr3")

BoatingTest.new(stud1, "test1", "passed", instr1)
BoatingTest.new(stud2, "test1", "failed", instr1)
BoatingTest.new(stud2, "test2", "failed", instr2)
BoatingTest.new(stud2, "test3", "passed", instr2)
BoatingTest.new(stud3, "test1", "failed", instr1)
BoatingTest.new(stud3, "test3", "passed", instr3)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

