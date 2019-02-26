class Post < ApplicationRecord
	belongs_to :category
	belongs_to :user
	has_many :comments

	validates :title, presence: true
	validates :category_id, presence: true
	validates :body, presence: true

	def self.search(query)
		where( "title LIKE ? OR body LIKE ?", "%#{query}%", "%#{query}%" )
		
	end
end
