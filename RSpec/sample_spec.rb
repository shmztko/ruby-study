describe "Some behaviour" do

  before :all do
    puts "executed only once before behaviour"
  end

  # before :each と before の呼び出し順はメソッドを定義した順
  before :each do
    puts "executed before each examples"
  end

  before do
    puts "executed before each examples (no args)"
  end

  it "should do something 1" do
    # Expectation - 1
    "".should == ""
    false.should_not be_nil
    ['A', 'B', 'C'].should_not include('D')
    lambda {[1, 2, 3] + 4}.should raise_error(TypeError)
  end

  it "should do something 2" do
    (1+1).should == 2
    10.should < 11
    "apple".should_not =~ /orange/
  end

  after :all do
    puts "executed only once after behaviour"
  end

  # after :each と after の呼び出し順はメソッド定義の逆順
  after :each do
    puts "executed after each examples"
  end

  after do
    puts "executed after each examples (no args)"
  end
end
