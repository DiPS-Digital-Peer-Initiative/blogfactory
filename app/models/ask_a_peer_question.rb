class AskAPeerQuestion < ApplicationRecord
     has_rich_text :body
     validates :body, allow_blank: false, presence: true, length: {minimum: 1}

     belongs_to :user, foreign_key: :user_id, primary_key: :id, required: true
end
