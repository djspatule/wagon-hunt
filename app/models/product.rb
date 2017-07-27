class Product < ApplicationRecord
    belongs_to :user
    validates :name, presence: true, uniqueness: true
    validates :url, presence: true, uniqueness: true
    validates :category, inclusion: {in: ["work", "music", "communication"] }
end
