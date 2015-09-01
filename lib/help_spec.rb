require_relative 'help'

describe Help do 

  before do
    @hp = Help.new
    @arg = " "
    @arg2 = 'queue clear'
    @arg3 = 'clear up'
  end

  it "displays a list of commands" do
    @hp.help(@arg).should == "Display Command List"
  end

  it "displays a description of argument entered" do
    @hp.help(@arg2).should == "Display Command List"
  end

  it "displays a list of commands when a non valid argument entered" do
    @hp.help(@arg3).should == "Display Command List"
  end

end