class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bookings
  has_many :courses, through: :bookings

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :nickname, presence: true, uniqueness: true
  # validates :email, presence: true, uniqueness: true
  # validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  # validates :password, presence: true, length: { in: 8..20 }, on: create
end
