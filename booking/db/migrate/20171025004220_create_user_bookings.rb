class CreateUserBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :user_bookings do |t|
      t.integer :userid
      t.datetime :from
      t.datetime :to
      t.string :location

      t.timestamps
    end
  end
end
