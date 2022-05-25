class ReservationsController < ApplicationController

  def create
    @reservation = Reservation.new(reservation_params)
    @atelier = Atelier.find(params[:atelier_id])
    @reservation.atelier = @atelier
    @reservation.user = current_user
    @reservation.save
    redirect_to dashboard_path(current_user)
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date)
  end
end
