class Reservation < ApplicationRecord
  belongs_to :time_slot, optional: true
  belongs_to :user

  validates :guests, presence: true, numericality: { less_than: 6 }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :phone_number, presence: true
  
end
