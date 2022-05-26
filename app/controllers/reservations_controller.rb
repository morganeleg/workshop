class ReservationsController < ApplicationController

  def create
    @reservation = Reservation.new(reservation_params)
    skip_authorization
    @atelier = Atelier.find(params[:atelier_id])
    @reservation.atelier = @atelier
    @reservation.user = current_user
    @reservation.save
    redirect_to dashboard_path(current_user)
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    skip_authorization
    @reservation.destroy!
    redirect_to dashboard_path(current_user), status: :see_other
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date)
  end
end
