class Book < ApplicationRecord
  belongs_to :category
  belongs_to :sub_category
  belongs_to :author
  has_many :book_genres
  has_many :genres, through: :book_genres 
end
