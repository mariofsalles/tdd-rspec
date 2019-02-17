require 'calculator' # como o arquivo está na pasta lib, não é necessário require relative
RSpec.describe 'Calculator - Tests' do # irá rodar um teste para a classe calculadora
  subject(:calc) { Calculator.new }
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
  context '#div' do
    it 'divide by zero' do
      expect{calc.div(3,0)}.to raise_error(ZeroDivisionError) 
      expect{calc.div(3,0)}.to raise_error('divided by 0') 
      expect{calc.div(3,0)}.to raise_error(ZeroDivisionError, 'divided by 0') 
    end 
    
  end
end
