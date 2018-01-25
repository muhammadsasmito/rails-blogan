class Post < ApplicationRecord
	belongs_to :category
	belongs_to :user
	# has_many :taggings
	# has_many :tags, through: :taggings 
	has_and_belongs_to_many :tags

	validates :title, presence: true
	validates_associated :category
	validates_associated :user
	
end
