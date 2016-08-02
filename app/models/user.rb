class User < ActiveRecord::Base
	has_many :ideas
	has_many :likes
  	has_secure_password
end
