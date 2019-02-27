class Category < ApplicationRecord
	has_many :posts

	validates :name, presence: true

	def self.search(query)
		where( "name ILIKE ?", "%#{query}%" )
		
	end

end
