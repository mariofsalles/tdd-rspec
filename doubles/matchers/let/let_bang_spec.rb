$count = 0 #variavel global

describe 'let!' do
  invocator_array = []

  let!(:counter) do
    invocator_array << :let!
    $count +=1
  end
  
  it 'chama o método helper antes do teste' do
    invocator_array << :example
    expect(invocator_array).to eq([:let!, :example])
    expect(counter).to eq(1)
  end
end