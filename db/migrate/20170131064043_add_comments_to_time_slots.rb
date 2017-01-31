class AddCommentsToTimeSlots < ActiveRecord::Migration[5.0]
  def change
    add_column :time_slots, :comments, :text
  end
end
