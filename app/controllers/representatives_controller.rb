class RepresentativesController < ApplicationController
  before_filter :get_student


  def index
    @representatives = Representative.all
  end

  def show
  end

  def new
    @representative = Representative.new
  end

  def create
    @representative = Representative.create(params[:representative])
    redirect_to representative_path(@representative)
  end

  def edit
  end

  def update
    @representative.update_attributes(params[:representative])
    redirect_to representative_path(@representative)
  end

  def get_representative
    @representative = Representative.find(params[:id])
  end
end
