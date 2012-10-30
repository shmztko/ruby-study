#coding:utf-8
require 'spec_helper'

describe BlogsController do

  describe "GET 'show/:id'" do
    fixtures :blogs
    before do
      @blog = blogs(:kakutani)
      # パラメータ :id を渡して
      # show アクションへ GETリクエスト(ってことでいいのかな？)
      get 'show', :id => @blog.id
    end

    it "リクエストは成功すること" do
      # response でレスポンスオブジェクトを参照
      response.should be_success
    end

    it ":idで指定したブログをロードしていること" do
      # Controllerのインスタンス変数に代入されたオブジェクトは
      # assigns 経由で参照可能です。
      # assigns[インスタンス変数名から@を覗いたシンボルもしくは、文字列]
      assigns[:blog].should == @blog
    end

    it "blogs/showを描画すること" do
      # render_template マッチャは
      # responseが描画するテンプレートを指定するマッチャ
      response.should render_template('blogs/show')
    end

  end
end
