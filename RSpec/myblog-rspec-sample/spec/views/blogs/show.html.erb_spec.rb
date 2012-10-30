#coding:utf-8
require 'spec_helper'

describe "blogs/show.html.erb" do
  fixtures :blogs
  before(:each) do
    @blog = blogs(:kakutani)
    assigns[:blog] = @blog
    render "blogs/show"
 end

  it "ブログの名前を表示すること" do
    responce.should have_tag('div.blog > h1', @blog.name)
  end
end
