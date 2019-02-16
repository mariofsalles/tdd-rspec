describe Array.new([1,2,3]) do
  it '# include' do # só funciona para elementos
    expect(subject).to include(2) 
  end

  it '# macth array' do # para o array exato
    expect(subject).to match_array([1,2,3]) 
  end

  it '# contain_exactly' do # para o array exato
    expect(subject).to contain_exactly(1,2,3) 
  end
end