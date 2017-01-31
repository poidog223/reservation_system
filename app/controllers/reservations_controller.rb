class ReservationsController < ApplicationController
  before_action :load_time_slot
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  

  # GET /reservations
  # GET /reservations.json
  def index
    @reservations = @time_slot.reservations.all
  end

  # GET /reservations/1
  # GET /reservations/1.json
  def show
  end

  # GET /reservations/new
  def new
    @reservation = @time_slot.reservations.new
  end

  # GET /reservations/1/edit
  def edit
  end

  # POST /reservations
  # POST /reservations.json
  def create
    @reservation = @time_slot.reservations.new(reservation_params)
    @reservation.user_id = current_user.id
    if @reservation.save
      redirect_to time_slot_reservation_path(@time_slot, @reservation), notice: 'Reservation was successfully created.'
    else
      render 'new'
    end
  end

  # PATCH/PUT /reservations/1
  # PATCH/PUT /reservations/1.json
  def update
    if @reservation.update(reservation_params)
      redirect_to time_slot_reservation_path(@time_slot, @reservation), notice: 'Reservation was successfully updated.'
    else
      render :edit 
    end
  end

  # DELETE /reservations/1
  # DELETE /reservations/1.json
  def destroy
    @reservation.destroy
    respond_to do |format|
      format.html { redirect_to reservations_url, notice: 'Reservation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservation
      @reservation = @time_slot.reservations.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reservation_params
      params.require(:reservation).permit(:time_slot_id, :date, :user_id, :charter_type, :guests, :comments)
    end

    def load_time_slot
      @time_slot = TimeSlot.find(params[:time_slot_id])
    end
end
