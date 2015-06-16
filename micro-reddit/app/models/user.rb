class User < ActiveRecord::Base
	before_save { self.username = username.downcase }
	validates :username, presence: true, 
											 length: { minimum: 3, maximum: 12 }, 
										 	 uniqueness: { case_sensitive: false }
	has_secure_password
	validates :password, presence: true, length: { minimum: 6 }

	has_many :links
	has_many :comments
end
