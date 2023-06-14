class ActiveAdminSetting < ApplicationRecord
     validates :name, length: {minimum: 1}, allow_blank: false, presence: true
     validates :string, length: {minimum: 1}, allow_blank: false, presence: true
end
