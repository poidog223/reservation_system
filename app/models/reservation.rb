class Reservation < ApplicationRecord
  belongs_to :time_slot, optional: true
  belongs_to :user, optional: true

  validates :guests, presence: true, numericality: { less_than: 6 }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true, length: { maximum: 10 }
  

end
