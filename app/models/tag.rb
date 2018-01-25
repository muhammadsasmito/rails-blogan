class Tag < ApplicationRecord
    # has_many :taggings
    # has_many :posts, through: :taggings 
    has_and_belongs_to_many :posts
    validates :name, presence: true
end
