class RemoveCharterTypeFromReservations < ActiveRecord::Migration[5.0]
  def change
  	remove_column :reservations, :charter_type
  end
end
