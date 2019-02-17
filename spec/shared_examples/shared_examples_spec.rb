require 'person'

shared_examples 'feels' do |feeling|
  it "#{feeling}" do
    person.send("#{feeling}!")
    expect(person.status).to eq("Feeling #{feeling.capitalize}!")
  end
end

describe 'Person' do
  subject(:person){ Person.new }

  include_examples 'feels', :happy
  it_behaves_like 'feels', :sad
  it_should_behave_like 'feels', :good

end