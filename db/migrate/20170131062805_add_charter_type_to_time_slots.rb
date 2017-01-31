class AddCharterTypeToTimeSlots < ActiveRecord::Migration[5.0]
  def change
    add_column :time_slots, :chartertype, :string
  end
end
