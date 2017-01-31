class AddColumnsToReservation < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :first_name, :string
    add_column :reservations, :last_name, :string
    add_column :reservations, :email, :string
    add_column :reservations, :phone_number, :integer
  end
end
