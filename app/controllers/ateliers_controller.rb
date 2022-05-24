class AteliersController < ApplicationController
  def index
    @ateliers = Atelier.all
  end
end
