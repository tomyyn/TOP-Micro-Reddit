class Comment < ApplicationRecord
    validates :body, length: {in: 20..500}
    validates :body, presence: true

    belongs_to :user
    belongs_to :post
end
