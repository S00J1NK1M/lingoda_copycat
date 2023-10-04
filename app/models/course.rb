class Course < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings
  has_one_attached :photo
  belongs_to :language
  belongs_to :teacher
end
