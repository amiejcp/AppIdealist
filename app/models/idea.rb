class Idea < ActiveRecord::Base
	belongs_to :user

	validates :content, length: {maximum: 300}
	validates :content, :presence => true
	validates :title, :uniqueness => true
end
