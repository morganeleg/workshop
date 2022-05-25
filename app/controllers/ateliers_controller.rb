class AteliersController < ApplicationController
  before_action :set_atelier, only: [:show, :edit, :update, :destroy]

  def index
    @ateliers = Atelier.all
  end

  def show
  end

  private

  def set_atelier
    @atelier = Atelier.find(params[:id])
  end
end
