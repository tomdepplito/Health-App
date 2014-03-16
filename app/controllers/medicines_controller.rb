class MedicinesController < ApplicationController
  before_filter :authenticate_user!

  def index
   # @medicine = History.all
    @medicine = Medicine.all

  end

  def new
    @medicine = Medicine.new
  end

  def create
    params.permit!
    @medicine = Medicine.new(params[:medicine])
    if @medicine.save
      flash[:success] = "Record created."
      redirect_to medicines_index_path
    else
      flash[:error] = "There was a problem."
      redirect_to medicines_index_path
    end
  end

  def edit
    @medicine = Medicine.find(params[:id])
  end

  def update
    @medicine = Medicine.find(params[:id])
  end

  def show
    @medicine = Medicine.find(params[:id])
    @user = @medicine.user
  end

  def destroy
    @medicine = Medicine.find(params[:id])
    @medicine.destroy
    redirect_to new_medicine_path
  end

private

  def medicine_params
    params.require(:medicine).permit(:name, :medicine_family, :dosage, :notes)
  end

end
