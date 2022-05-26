class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :avatar
  has_many :ateliers
  has_many :reservations, through: :ateliers, dependent: :destroy
  has_many :reserved, class_name: :Reservation, dependent: :destroy
end
