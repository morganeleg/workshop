class AteliersController < ApplicationController
  before_action :set_atelier, only: [:show, :edit, :update, :destroy]

  def index
    @ateliers = Atelier.all
  end

  def show
    authorize @atelier
  end

  def edit
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
    params.require(:atelier).permit(:name, :address, :style, :details, :price_per_day)
  end
end
