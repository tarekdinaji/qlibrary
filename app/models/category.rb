class Category < ApplicationRecord
  has_many :books
  has_many :sub_categories
end
