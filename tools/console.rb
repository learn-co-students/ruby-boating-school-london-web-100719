require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

jake = Student.new("Jake")
michael = Student.new("Michael")
anthony = Student.new("Anthony")
frank = Student.new("Frank")
ben = Student.new("Ben")
jerry = Student.new("Jerry")

mr_carter = Instructor.new("Mr. Carter")
mr_bennett = Instructor.new("Mr. Bennett")
mr_sinatra = Instructor.new("Mr. Sinatra")

mr_sinatra.pass_student(frank, "The boat stuffs")
mr_sinatra.pass_student(ben, "The boat stuffs")
mr_sinatra.pass_student(jerry, "The boat stuffs")
mr_sinatra.fail_student(anthony, "The boat stuffs")
mr_sinatra.fail_student(michael, "The boat stuffs")
mr_sinatra.fail_student(jake, "The boat stuffs")

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

