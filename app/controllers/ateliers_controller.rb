class AteliersController < ApplicationController
  before_action :set_atelier, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = policy_scope(Restaurant)
  end

  def show
    authorize @atelier
  end

  private

  def set_atelier
    @atelier = Atelier.find(params[:id])
  end
end
