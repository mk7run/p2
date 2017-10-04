class Restaurant < ActiveRecord::Base
  belongs_to :creator, class_name: "User"
  has_many :reviews

  validates :name, :cuisine, :address, :city, :state, :zipcode, presence: true
end
