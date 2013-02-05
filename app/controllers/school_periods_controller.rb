
class SchoolPeriodsController < ApplicationController
  def index
    @school_periods = SchoolPeriod.all
  end

  def show
    @school_period = SchoolPeriod.find(params[:id])
  end

  def new
    @school_period = SchoolPeriod.new
  end

  def create
    @school_period = SchoolPeriod.create(params[:school_period])
    redirect_to school_period_path(@school_period)
  end

  def edit
    @school_period = SchoolPeriod.find(params[:id])
  end

  def update
    @school_period = SchoolPeriod.update_attributes(params[:school_period])
    redirect_to school_period_path
  end
  def destroy
    SchoolPeriod.delete(params[:id])
    redirect_to school_periods_path
  end
end
