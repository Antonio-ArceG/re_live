class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :photo
  has_many :bookings, dependent: :destroy
  has_many :memories, through: :bookings, dependent: :destroy
  has_many :reviews, through: :bookings, dependent: :destroy
  validates :email, :encrypted_password, presence: true
  validates :username, :email, uniqueness: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
