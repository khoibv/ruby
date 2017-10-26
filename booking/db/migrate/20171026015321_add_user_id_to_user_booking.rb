class AddUserIdToUserBooking < ActiveRecord::Migration[5.1]
  def change
    add_column :user_bookings, :user_id, :integer
  end
end
