class AteliersController < ApplicationController
  before_action :set_atelier, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: :index

  def index
    @ateliers = Atelier.all
    @ateliers = policy_scope(Atelier)
  end

  def new
    @atelier = Atelier.new
    authorize @atelier
  end

  def create
    @atelier = Atelier.new(atelier_params)
    @atelier.user = current_user
    @atelier.save
    authorize @atelier
    redirect_to atelier_path(@atelier)
  end

  def show
    @reservation = Reservation.new
    authorize @atelier
  end

  def edit
    authorize @atelier
  end

  def update
    @atelier.update(atelier_params)
    redirect_to dashboard_path(current_user)
  end

  def destroy
    @atelier.destroy
    authorize @atelier
    redirect_to dashboard_path(current_user), status: :see_other
  end

  private

  def set_atelier
    @atelier = Atelier.find(params[:id])
  end

  def atelier_params
    params.require(:atelier).permit(:name, :address, :style, :details, :price_per_day, photos: [])
  end

end
