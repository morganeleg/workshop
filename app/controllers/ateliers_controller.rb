class AteliersController < ApplicationController
  before_action :set_atelier, only: [:show, :edit, :update, :destroy]

  def index
    @ateliers = policy_scope(Atelier)
    @ateliers = Atelier.all
  end

  def show
    @reservation = Reservation.new
    authorize @atelier
  end

  private

  def set_atelier
    @atelier = Atelier.find(params[:id])
  end
end
