class Reservation < ApplicationRecord
  belongs_to :time_slots
  belongs_to :user

  def is_conflicting
  	# if(reservation1_start < reservation2_end && reservation2.start < reservation2.end)
  	# 	return true
  	# end
  end
end
