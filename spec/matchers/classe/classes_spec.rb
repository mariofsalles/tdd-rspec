require 'string_nao_vazia' # para testar a classe StringNaoVazia

describe 'Classes' do
  it '# be_instace_of' do #Exatamente a classe
    expect(10).to be_instance_of(Integer)
  end

  it '# be_kind_of' do #Pode vir por herança
    str = StringNaoVazia.new
    expect(str).to be_kind_of(String)
    expect(str).to be_kind_of(StringNaoVazia)
    expect(10).to be_kind_of(Integer) 
  end
  
  it '# respond to' do # similar ao kind_of
    expect('ruby').to respond_to(:size)
    expect('ruby').to respond_to(:count)
  end

  it '# be_an / be_a' do #Pode vir por herança
    str = StringNaoVazia.new
    expect(str).to be_an(String)
    expect(str).to be_an(StringNaoVazia)
    expect(10).to be_an(Integer) 
  end

end