class SiteImage < ApplicationRecord
     has_one_attached :image
     
     validates :image, attached: true, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

     validates :name, presence: true, length: { minimum: 1 }
end
