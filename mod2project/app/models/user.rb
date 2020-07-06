class User < ApplicationRecord
    has_many :reviews 
    has_many :comments 
    has_many :restaurants, through: :reviews 

    validates :username, presence: true, uniqueness: { case_sensitive: false }
    validates :name, presence: true
    validates :password, presence: true, length: {minimum: 7}
    validates :location, presence: true

end
