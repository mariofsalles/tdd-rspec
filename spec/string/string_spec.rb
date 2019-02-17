require 'string_not_empty'
describe String do
  describe StringNotEmpty do
    it '# Not is empty' do
      expect(subject).to eq("I am not empty")
    end
  end
end