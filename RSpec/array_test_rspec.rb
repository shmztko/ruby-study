# Behaviour - 1
describe Array, "when empty" do
  before do
    @empty_array = []
  end

  # Example - 1
  it "sholud be empty" do
    # Expectation - 1-1
    @empty_array.should be_empty
  end

  # Example - 2
  it "should size 0" do
    # Expectation - 2-1
    @empty_array.size.should == 0
  end

  # Example - 3
  after do
    # Expectation - 3-1
    @empty_array = nil
  end
end

# Behaviour - 2
describe Array, "when initialized with object" do
  before do
    #@array = Array.new(3, Hash.new) #これは勘違い
    # -> 配列の３つの要素をすべてHash.new で初期化してしまう。
    # そのため、各要素が同じ参照になり１つに変更を加えると
    # 他の要素も変更されてしまう。
    @array = Array.new(3){Hash.new}
    @array[0][:cat] = "Nuko"
  end

  # Example - 1
  it "should not affect others" do
    # Expectation - 1
    @array.should == [{:cat => "Nuko"}, {}, {}]
  end
end
