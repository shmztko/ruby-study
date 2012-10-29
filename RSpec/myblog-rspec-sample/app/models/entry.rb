class Entry < ActiveRecord::Base
  belongs_to :blog
  attr_accessible :blog_id, :body, :posted_on, :title, :blog

  before_save :fill_posted_on

  def fill_posted_on
    # ||= 値がnil か false なら代入するという演算子
    self.posted_on ||= Date.today
  end
end
