class Reservation < ApplicationRecord
  belongs_to :time_slots
  belongs_to :user
end
