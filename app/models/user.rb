class User < ActiveRecord::Base
	has_many :ideas
	has_many :likes
  	has_secure_password

	EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  	validates :name, :alias, :presence => true
  	validates :password, length: { minimum: 8 }
  	validates :email, presence: true, uniqueness: { case_sensitive:false }, format: { with: EMAIL_REGEX }

  	before_save do 
  		self.email.downcase!
  		
  	end
end
