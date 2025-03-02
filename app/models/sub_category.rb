class SubCategory < ApplicationRecord
  belongs_to :category
  has_many :books
  validates :title, :category_id, presence: true

end
