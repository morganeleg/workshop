class AteliersController < ApplicationController
  before_action :set_atelier, only: [:show, :edit, :update, :destroy]

  def index
    @ateliers = policy_scope(Atelier)
  end

  def new
    @atelier = Atelier.new
    authorize @atelier
  end

  def create
    @atelier = Atelier.new(list_params)
    @atelier.user = current_user
    @atelier.save
    authorize @atelier
    redirect_to atelier_path(@atelier)
  end

  def show
    @reservation = Reservation.new
    authorize @atelier
  end

  private

  def set_atelier
    @atelier = Atelier.find(params[:id])
  end

  def list_params
    params.require(:atelier).permit(:name, :address, :style, :details, :price_per_day, photos: [])
  end

end
