class Course < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings
  belongs_to :language

  belongs_to :teacher
end
