require 'person'

describe 'Attributes' do

  let(:person){Person.new}
  
  it '# have_attributes' do
    person.name = 'Michael'
    person.age = 20

    expect(person).to have_attributes(name: start_with('M'), age: (be > 19))
  end

  it '# have_attributes' do
    person.name = 'Marcos'
    person.age = 25

    expect(person).to have_attributes(name: start_with('M'), age: (be > 19))
  end 
end