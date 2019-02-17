RSpec::Matchers.define_negated_matcher :exclude, :include

describe Array.new([1,2,3]), "Array",type: 'collection' do
  it '# include' do # só funciona para elementos
    expect(subject).to include(2)
  end

  it '# exclude' do # só funciona para elementos
    expect(subject).to exclude(5)
  end

  it '# match array' do # para o array exato
    expect(subject).to match_array([1,2,3]) 
  end

  it '# contain_exactly' do # para o array exato
    expect(subject).to contain_exactly(1,2,3) 
  end
  
end