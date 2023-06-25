class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true, uniqueness: { case_sensitive: false }
  validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/, :multiline => true

  validates :name, presence: true
  
  has_many :posts, foreign_key: :user_id, primary_key: :id, dependent: :destroy
  has_many :comments, foreign_key: :user_id, primary_key: :id, dependent: :destroy, :through => :posts

  has_one_attached :avatar

  validates :avatar, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }
end
