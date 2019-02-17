require 'student'
require 'course'

describe 'Stub' do
  it '# has_finished?' do
    student = Student.new
    course = Course.new
    #  forçar que um estudante receba como finalizado=true o curso com a instancia da classe Course(colaborador)
    allow(student).to receive(:has_finished?)
      .with(an_instance_of(Course))
      .and_return(false) # or true
    course_finished = student.has_finished?(course)

    expect(course_finished).to be_falsey # or truthy
  end

  it '# dinamics args' do
    student = Student.new
    allow(student).to receive(:foo) do |arg|
      if arg == :hello
        "Hello!"
      elsif arg == :hi
        "Hi!"
      end
    end

    expect(student.foo(:hello)).to eq("Hello!")
    expect(student.foo(:hi)).to eq("Hi!")
  end

  it '# whatever class instance' do
    student = Student.new
    other_student = Student.new
    allow_any_instance_of(Student)
      .to receive(:bar)
      .and_return(true)

    expect(student.bar).to be_truthy
    expect(other_student.bar).to be_truthy
  end

  it '# error' do
    student = Student.new
    allow(student)
      .to receive(:bar)
      .and_raise(RuntimeError)

    expect{student.bar}.to raise_error(RuntimeError)
  end

end