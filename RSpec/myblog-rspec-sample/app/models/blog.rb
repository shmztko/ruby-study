class Blog < ActiveRecord::Base
  has_many :entries
  validates :name, :presence => true
  attr_accessible :name
end
