class HistoriesController < ApplicationController
  before_filter :authenticate_user!

  def index
   # @history = History.all
    @history = History.all

  end

  def new
    @history = History.new
  end

  def create
    params.permit!
    @history = current_user.histories.new(params[:history])
    if @history.save
      flash[:success] = "Record created."
      redirect_to histories_path
    else
      flash[:error] = "There was a problem."
      redirect_to new_history_path
    end
  end

  def edit
    @history = History.find(params[:id])
  end

  def update
    @history = History.find(params[:id])
  end

  def show
    @history = History.find(params[:id])
    @user = @history.user
  end

private

  def history_params
    params.require(:history).permit(:illness_category, :illness_type, :date, :created_at, :user_id, :updated_at)
  end

end
