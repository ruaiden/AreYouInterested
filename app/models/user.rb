class User < ApplicationRecord
    has_many :posts
    has_many :comments
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :first_name, :last_name format: { without: /[0-9]/, message: "does not allow numbers" }
    validates :email, uniqueness: true
    validates :password_digest, presence: true
    validates :password_digest, length: {minimum:6 } 
    has_secure_password

    def new
    end 

    def create
    end 
    
    def index 
    end

    def show 
    end

end


