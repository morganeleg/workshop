class AteliersController < ApplicationController
  before_action :set_atelier, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: :index

  def index
    @ateliers = Atelier.all
  end

  def show
    authorize @atelier
  end

  private

  def set_atelier
    @atelier = Atelier.find(params[:id])
  end
end
