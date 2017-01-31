json.extract! reservation, :id, :time_slots_id, :user_id, :charter_type, :guests, :comments, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)