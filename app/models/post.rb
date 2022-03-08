class Post < ApplicationRecord
    validates :title, length: {in: 4..50}, uniqueness: {case_sensitive: false}
    validates :body, length: {in: 50..1000}
    validates :title, :body, presence: true

    belongs_to :user
    has_many :comments, dependent: :destroy 
end
