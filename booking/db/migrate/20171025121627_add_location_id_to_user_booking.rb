class AddLocationIdToUserBooking < ActiveRecord::Migration[5.1]
  def change
    add_column :user_bookings, :location_id, :integer
  end
end
