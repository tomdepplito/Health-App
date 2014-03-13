class HistoriesController < ApplicationController
  before_filter :authenticate_user!
  def index
    @history = History.all
  end

  def new
    @history = History.new
  end

  def create
    params.permit!
    @history = current_user.histories.create(params[:history])
  end

  def edit
  end

  def update
  end

  def show
  end
private

  def history_params
    params.require(:history).permit(:illness_category, :illness_type, :date, :created_at, :user_id, :updated_at)
  end
end
