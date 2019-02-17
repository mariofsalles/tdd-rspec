describe 'Matcher output' do
  it { expect{ puts 'Mario' }.to output.to_stdout }
  it { expect{ print 'Mario' }.to output('Mario').to_stdout }
  it { expect{ puts 'Mario' }.to output(/Mario/).to_stdout }
  
  it { expect{ warn 'Mario' }.to output.to_stderr }
  it { expect{ warn 'Mario' }.to output("Mario\n").to_stderr }
  it { expect{ warn 'Mario' }.to output(/Mario/).to_stderr }
end