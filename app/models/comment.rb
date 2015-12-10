class Comment < ActiveRecord::Base
  attr_accessible :comment
  belongs_to :profile
  belongs_to :commentable
end
