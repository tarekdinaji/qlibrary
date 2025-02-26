class SubCategory < ApplicationRecord
  belongs_to :category
  has_many :books
  validates :title, presence: true, uniqueness: true

end
