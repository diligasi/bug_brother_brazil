class User < ActiveRecord::Base
  has_many :comment
  before_save :standardizing_username

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :admin, :username
  # attr_accessible :title, :body

  validates_presence_of :username
  validates :username, :uniqueness => true

  # Puts the username in lowercase before saving it in the database
  def standardizing_username
    self.username = username.downcase
  end
end
