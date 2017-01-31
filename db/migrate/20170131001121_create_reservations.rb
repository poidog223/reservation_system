class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.references :time_slots, foreign_key: true
      t.references :user, foreign_key: true
      t.string :charter_type
      t.integer :guests
      t.text :comments

      t.timestamps
    end
  end
end
