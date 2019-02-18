require 'student'
require 'course'

describe 'Mocks' do
  
  it '# bar' do
    # setup
    student = Student.new
    # verify
    expect(student).to receive(:bar) # or truthy
    # exercise
    student.bar
  end

  it '# args' do
    student = Student.new
    expect(student).to receive(:foo).with(:args) # or truthy
    student.foo(:args)
  end

  it '# repite' do
    student = Student.new
    expect(student).to receive(:foo).with(:args).once
    student.foo(:args) # for more times this exercise part have to invocate
  end

  it '# return' do
    student = Student.new
    expect(student).to receive(:foo).with(:args).and_return(true)
    student.foo(:args) # for more times this exercise part have to invocate
  end

end