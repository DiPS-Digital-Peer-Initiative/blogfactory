class Post < ApplicationRecord
  has_rich_text :content

  has_one_attached :header_image

  validates :header_image, attached: true, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

  validates :title,  allow_blank: false, presence: true, length: {minimum: 1}
  validates :description,  allow_blank: false, presence: true, length: {maximum: 200, minimum: 1}

  belongs_to :category, foreign_key: :category_id, primary_key: :id, required: true
  
  has_many :comments, foreign_key: :post_id, primary_key: :id, dependent: :destroy
end
