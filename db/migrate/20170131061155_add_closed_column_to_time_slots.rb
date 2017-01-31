class AddClosedColumnToTimeSlots < ActiveRecord::Migration[5.0]
  def change
    add_column :time_slots, :closed, :boolean, default: false
  end
end
