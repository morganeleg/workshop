class Atelier < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
end
