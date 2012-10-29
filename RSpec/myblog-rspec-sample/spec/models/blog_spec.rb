# coding: utf-8
require 'spec_helper'

describe Blog, "#name が設定されていない場合:" do
  before(:each) do
    @blog = Blog.new
  end

  it "バリデーションに失敗すること" do
    @blog.should_not be_valid
  end

  it ":nameにエラーが設定されていること" do
    @blog.should have(1).errors_on(:name)
  end
end

describe Blog do
  fixtures :blogs, :entries
  before do
    @blog = blogs(:kakutani)
  end

  it "は複数の記事を所有できること" do
    @blog.should have_at_least(2).entries
  end
end

describe Blog, "に記事を投稿できた場合" do
  fixtures :blogs, :entries
  before do
    @blog = blogs(:kakutani)
  end

  it "記事の件数が１件増えること" do
    lambda {
      @blog.entries.create(
        :title => 'new_post',
        :body => 'hello',
        :posted_on => Date.today
      )
    }.should change(Entry, :count).by(1)
  end
=begin change マッチャの使用例
  # 何でもイイから変化があった場合
  lambda {
    team.add_player(player)
  }.should change(roster, :count)

  # 1件の変化があった場合
  lambda {
    team.add_player(player)
  }.should change(roster, :count).by(1)

  # from to を指定しての検査
  string = "string"
  lambda {
    string.reverse
  }.should change { string }.from("string").to("gnirts")
  # change マッチャにブロックを渡す場合には、{} の形式で渡してください。
  # do...end 形式はサポートされません。

  lambda {
    person.happy_birthday
  }.should change(person, :age).from(32).to(33)

  lambda {
    employee.develop_great_new_social_networking_app
  }.should change(employee, :title).to("CEO").from("Mail Clerk")
=end
end
