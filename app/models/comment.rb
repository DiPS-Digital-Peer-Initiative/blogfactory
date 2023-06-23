class Comment < ApplicationRecord
  has_rich_text :body
  validates :body, allow_blank: false, presence: true, length: {maximum: 500, minimum: 1}

  belongs_to :post, foreign_key: :post_id, primary_key: :id, required: true
  belongs_to :user, foreign_key: :user_id, primary_key: :id, required: true
end
