$counter = 0 #variavel global

describe 'let' do
  let(:count){$counter +=1}

  it 'memoriza o valor' do
    expect(count).to eq(1) #1a vez é carregado
    expect(count).to eq(1) #2a vez fica em cache
  end

  it 'não é cacheado entre os testes' do
    expect(count).to eq(2) #compara o que em cache com este teste
  end
end