class Restaurant < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_many :users, through: :reviews

    def avg_rating
        if self.reviews.count > 0
            self.reviews.map do |review|
                review.rating
            end.sum / self.reviews.count
        else
            nil 
        end
    end

    def display_dollars
        output = ""
        self.price.to_i.times do 
            output += '$'
        end
        output
    end
end
