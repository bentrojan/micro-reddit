class Link < ActiveRecord::Base
	validates :url, presence: true
	validates :body, presence: true

	belongs_to :user
	has_many :comments
end
