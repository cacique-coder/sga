class MedicinesController < ApplicationController
  before_filter :get_medicine, :only => [:show,:edit,:update,:destroy]

  def index
    @medicines = Medicine.all
  end

  def new
    @medicine = Medicine.new
  end

  def create
    @medicine = Medicine.create(params[:medicine])
    redirect_to medicine_path(@medicine)
  end

  def show
  end

  def edit
  end

  def update
    @medicine.update_attributes(params[:medicine])
    redirect_to medicine_path(@medicine)
  end

  def destroy
  end

  def get_medicine
    @medicine = Medicine.find(params[:id])
  end

end
