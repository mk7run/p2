class Review < ActiveRecord::Base
  belongs_to :reviewer, foreign_key: :reviewer_id, class_name: "User"
  belongs_to :restaurant
  validates :content, :rating, presence: true
end
