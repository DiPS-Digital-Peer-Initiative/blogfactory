class Comment < ApplicationRecord
  belongs_to :post, foreign_key: :post_id, primary_key: :id, required: true
end
