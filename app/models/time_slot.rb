class TimeSlot < ApplicationRecord
	has_many :reservations
	has_many :users, through: :reservations

	validates :capacity, presence: true
	validates :start_time, presence: true
	validates :end_time, presence: true
	validates :chartertype, presence: true
end
