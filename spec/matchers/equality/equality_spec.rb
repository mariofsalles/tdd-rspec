describe 'Matchers de igualdade' do
  it '#equal - Test if is same object' do
    x = 'ruby'
    y = 'ruby'
    expect(x).not_to equal(y)
    expect(x).to equal(x)
  end

  it '#be - Test if is same object' do
    x = 'ruby'
    y = 'ruby'
    expect(x).not_to be(y)
    expect(x).to be(x)
  end

  it '#eql - Test the value' do
    x = 'ruby'
    y = 'ruby'
    expect(x).to eql(y)
  end

  it '#eq - Test the value/content' do
    x = 'ruby'
    y = 'ruby'
    expect(x).to eq(y)
  end

end