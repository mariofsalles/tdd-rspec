require 'calculator' # como o arquivo está na pasta lib, não é necessário require relative
describe Calculator do # irá rodar um teste para a classe calculadora
  subject(:calc) { described_class.new()  }
  context '#sum' do
    it 'positives numbs' do
      result = calc.sum(5, 2)
      expect(result).to eq(7)
    end

    it 'negative numbs' do
      result = calc.sum(-5, 2)
      expect(result).to eq(-3)
    end
  end
end
