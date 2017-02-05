class AddStripeCardTokenToReservation < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :card_token, :string
  end
end
