describe 'Matchers de Comparação' do
  it '# >' do
  expect(5).to be>1
  end
  it '# >=' do
  expect(5).to be>=1
  end

  it '# <' do
  expect(5).to be<6
  end

  it '# <=' do
  expect(5).to be<=5
  end

  it '# be_between - inclusive' do
  expect(5).to be_between(2, 7).inclusive
  expect(2).to be_between(2, 7).inclusive #inclui o elemento no inicio do intervalo
  expect(7).to be_between(2, 7).inclusive #inclui o elemento do fim do intervalo
  end

  it '# be_between - exclusive' do
  expect(5).to be_between(2, 7).exclusive
  expect(2).to be_between(1, 7).exclusive #inclui o elemento no inicio do intervalo
  expect(7).to be_between(2, 8).exclusive #inclui o elemento do fim do intervalo
  end

  it '# match regex' do
  expect('fulano@teste.com.br').to match(/..@../)
  end

  it '# start with' do
  expect('fulano de tal').to start_with('fulano') #funciona para array
  end

  it '# end with' do
    expect('fulano de tal').to end_with('tal') #funciona para array
  end

end
