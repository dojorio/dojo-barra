require_relative '../Sms'
describe Sms do
  it "writes A" do
    subject.write('A').should=='2'
  end
  it "writes B" do
    subject.write('B').should=='22'
  end
  it "writes C" do
    subject.write('C').should=='222'
  end
  it "writes D" do
    subject.write('D').should=='3'
  end
  it "writes AD" do
    subject.write('AD').should=='23'
  end
  it "writes AA" do
    subject.write('AA').should=='2_2'
  end
  it "writes AE" do
    subject.write('AE').should=='233'
  end
  it "writes AB" do
    subject.write('AB').should=='2_22'
  end
  it "writes DAB" do
    subject.write('DAB').should=='32_22'
  end
  it "frase" do
    subject.write('SEMPRE ACESSO O DOJOPUZZLES').should == '77773367_7773302_222337777_777766606660366656667889999_9999555337777'
  end
end
