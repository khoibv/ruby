class UserBookingsController < ApplicationController
  layout 'main'
  before_action :set_user_booking, only: [:show, :edit, :update, :destroy]

  # GET /user_bookings
  # GET /user_bookings.json
  def index
    @user_bookings = UserBooking.all
  end

  # GET /user_bookings/1
  # GET /user_bookings/1.json
  def show
  end

  # GET /user_bookings/new
  def new
    @user_booking = UserBooking.new
  end

  # GET /user_bookings/1/edit
  def edit
  end

  # POST /user_bookings
  # POST /user_bookings.json
  def create
    @user_booking = UserBooking.new(user_booking_params)

    respond_to do |format|
      if @user_booking.save
        format.html { redirect_to @user_booking, notice: 'User booking was successfully created.' }
        format.json { render :show, status: :created, location: @user_booking }
      else
        format.html { render :new }
        format.json { render json: @user_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_bookings/1
  # PATCH/PUT /user_bookings/1.json
  def update
    respond_to do |format|
      if @user_booking.update(user_booking_params)
        format.html { redirect_to @user_booking, notice: 'User booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_booking }
      else
        format.html { render :edit }
        format.json { render json: @user_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_bookings/1
  # DELETE /user_bookings/1.json
  def destroy
    @user_booking.destroy
    respond_to do |format|
      format.html { redirect_to user_bookings_url, notice: 'User booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_booking
      @user_booking = UserBooking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_booking_params
      params.require(:user_booking).permit(:user_id, :from, :to, :location_id)
    end
end
