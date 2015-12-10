class Product < ActiveRecord::Base
  attr_accessible :content, :name, :title
  has_many :comments, as: :commentable
end
