class Product < ApplicationRecord
    belongs_to :user
    has_attachment :illustration

    validates :name, presence: true, uniqueness: true
    validates :url, presence: true, uniqueness: true
    validates :category, inclusion: {in: ["work", "music", "communication"] }
end
