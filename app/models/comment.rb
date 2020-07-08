class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :review

  validates :user, presence: :true
  validates :content, presence: :true
end
