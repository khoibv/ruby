class RemoveUseridFromUserBooking < ActiveRecord::Migration[5.1]
  def change
    remove_column :user_bookings, :userid, :integer
  end
end
