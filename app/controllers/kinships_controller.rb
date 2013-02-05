class KinshipsController < ApplicationController
  def index
    @kinships = Kinship.all
  end

  def new
    @kinship = Kinship.new
  end

  def create
    @kinship = Kinship.create(params[:kinship])
    redirect_to kinships_path
  end

  def edit
  end

  def update
  end
end
