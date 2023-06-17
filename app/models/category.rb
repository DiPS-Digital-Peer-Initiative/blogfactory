class Category < ApplicationRecord

     validates :string, presence: true, length: { minimum: 1 }
     has_many :posts, foreign_key: :category_id, primary_key: :id, dependent: :destroy
end
