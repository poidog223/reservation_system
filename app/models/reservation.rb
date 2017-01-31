class Reservation < ApplicationRecord
  belongs_to :time_slot, optional: true
  belongs_to :user

  validates :guests, presence: true, numericality: { less_than: 6 }

  
end
