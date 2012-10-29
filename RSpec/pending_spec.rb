describe "Pending Examples" do

  it "should do something" # ブロックがないためPending

  it "pending() with message" do
    pending("Some Reason")
    true.should be_true # 評価の対象とはならない
  end

  it "pending() with block" do
    (1+1).should == 2
    pending("for obvious reason") do
      true.should be_false
    end
    nil.should_not be_true
  end
end

