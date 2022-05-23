class Reservation < ApplicationRecord
  belongs_to :atelier
  belongs_to :user
end
