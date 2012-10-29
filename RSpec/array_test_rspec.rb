describe Array, "when empty" do
  before do
    @empty_array = []
  end

  it "sholud be empty" do
    @empty_array.should be_empty
  end

  it "should size 0" do
    @empty_array.size.should == 0
  end

  after do
    @empty_array = nil
  end
end
describe Array, "when initialized with object" do
  before do
    #@array = Array.new(3, Hash.new) #これは勘違い
    # -> 配列の３つの要素をすべてHash.new で初期化してしまう。
    # そのため、各要素が同じ参照になり１つに変更を加えると
    # 他の要素も変更されてしまう。
    @array = Array.new(3){Hash.new}
    @array[0][:cat] = "Nuko"
  end

  it "should not affect others" do
    @array.should == [{:cat => "Nuko"}, {}, {}]
  end
end
