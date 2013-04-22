class Camera < ActiveRecord::Base
  has_many :comment
  attr_accessible :address, :description, :name
  
  validates_presence_of :address, :description, :name
  validates :address, :name, :uniqueness => true
end
