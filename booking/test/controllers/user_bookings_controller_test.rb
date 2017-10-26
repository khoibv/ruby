require 'test_helper'

class UserBookingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_booking = user_bookings(:one)
  end

  test "should get index" do
    get user_bookings_url
    assert_response :success
  end

  test "should get new" do
    get new_user_booking_url
    assert_response :success
  end

  test "should create user_booking" do
    assert_difference('UserBooking.count') do
      post user_bookings_url, params: { user_booking: { from: @user_booking.from, location: @user_booking.location, to: @user_booking.to, userid: @user_booking.userid } }
    end

    assert_redirected_to user_booking_url(UserBooking.last)
  end

  test "should show user_booking" do
    get user_booking_url(@user_booking)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_booking_url(@user_booking)
    assert_response :success
  end

  test "should update user_booking" do
    patch user_booking_url(@user_booking), params: { user_booking: { from: @user_booking.from, location: @user_booking.location, to: @user_booking.to, userid: @user_booking.userid } }
    assert_redirected_to user_booking_url(@user_booking)
  end

  test "should destroy user_booking" do
    assert_difference('UserBooking.count', -1) do
      delete user_booking_url(@user_booking)
    end

    assert_redirected_to user_bookings_url
  end
end
