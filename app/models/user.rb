class User < ApplicationRecord
    validates :name, :email, :password, presence: true
    validates :name, :email, uniqueness: { case_sensitive: false }
    validates :name, length: {in: 4..20}
    validates :password, format: { with: /(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}/,
        message: "Must have between eight and twenty characters, one uppercase letter, one lowercase letter, one number and one special character"    
    }, length: {in: 8..20}

    has_many :posts, dependent: :destroy 
    has_many :comments, dependent: :destroy 
end
