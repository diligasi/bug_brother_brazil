class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :camera
  attr_accessible :comment
  
  validates_presence_of :comment
end
