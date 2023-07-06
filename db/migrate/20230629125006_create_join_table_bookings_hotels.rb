class CreateJoinTableBookingsHotels < ActiveRecord::Migration[7.0]
  def change
    create_join_table :bookings, :hotels, id: false do |t|
      # t.index [:booking_id, :hotel_id]
      # t.index [:hotel_id, :booking_id]
    end
  end
end
