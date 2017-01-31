class Reservation < ApplicationRecord
  belongs_to :time_slot, optional: true
  belongs_to :user

end
