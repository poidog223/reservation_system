class ChangeIntegerColumnToString < ActiveRecord::Migration[5.0]
  def change
  	change_column :reservations, :phone_number, :string
  end
end
