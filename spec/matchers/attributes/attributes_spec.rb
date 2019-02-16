require 'person'

describe 'Attributes' do
  it '# have_attributes' do
    person = Person.new
    person.name = 'Michael'
    person.age = 20
    expect(person).to have_attributes(name: start_with('M'), age: (be > 19))
  end
  
end