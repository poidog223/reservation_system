class AddCapacityToTimeSlots < ActiveRecord::Migration[5.0]
  def change
    add_column :time_slots, :capacity, :integer
  end
end
