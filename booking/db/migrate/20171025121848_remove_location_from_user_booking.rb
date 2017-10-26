class RemoveLocationFromUserBooking < ActiveRecord::Migration[5.1]
  def change
    remove_column :user_bookings, :location, :string
  end
end
