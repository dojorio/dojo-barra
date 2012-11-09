# encoding: UTF-8

require './assassino'


describe Detetive do

  it "deveria retornar 0 quando a resposta está correta" do
    Detetive.new.investiga([1, 1, 1]).should == 0
  end
  
  it "deveria retornar 1 quando somente o assassino está errado" do
    Detetive.new.investiga([2, 1, 1]).should == 1
  end
  
  it "deveria retornar 2 quando somente o local está errado" do
    Detetive.new.investiga([1, 2, 1]).should == 2
  end
  
  it "deveria retornar 3 quando somente a arma está errada" do
    Detetive.new.investiga([1, 1, 2]).should == 3
  end
end