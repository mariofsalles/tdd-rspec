require 'person'

describe 'Attributes' do

  around(:each) do |block|
    puts "ANTES DE CADA TESTE"
    @person = Person.new
    block.run
    @person.name = 'Sem nome'
    puts "DEPOIS DE CADA TESTE: #{@person.inspect}" 
  end
  # before(:each) do
  #   puts "ANTES DE CADA TESTE"
  #   @person = Person.new
  # end
  # after(:each) do
  #   @person.name = 'Sem nome'
  #   puts "DEPOIS DE CADA TESTE: #{@person.inspect}" 
  # end

  it '# have_attributes' do
    @person.name = 'Michael'
    @person.age = 20

    expect(@person).to have_attributes(name: start_with('M'), age: (be > 19))
  end

  it '# have_attributes' do
    @person.name = 'Marcos'
    @person.age = 25

    expect(@person).to have_attributes(name: start_with('M'), age: (be > 19))
  end 
end