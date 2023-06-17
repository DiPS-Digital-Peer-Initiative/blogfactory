class Post < ApplicationRecord
  has_rich_text :content

  validates :title,  allow_blank: false, presence: true, length: {minimum: 1}
  validates :description,  allow_blank: false, presence: true, length: {maximum: 200, minimum: 1}

  belongs_to :category, foreign_key: :category_id, primary_key: :id, required: true
end
