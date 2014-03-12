class HistoriesController < ApplicationController
  def index
    @history = History.all
  end

  def new
    @history = History.new
  end

  def create
    h = History.new
    h.allergies = params["allergies"]
    h.immunizations = params["immunizations"]
    h.medications = params["medications"]
    h.infections = params[""]
  end

  def edit
  end

  def update
  end

  def show
  end
end
