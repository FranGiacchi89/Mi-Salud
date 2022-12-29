class ReportsController < ApplicationController

  def index
    @reports = current_user.reports

  end

  def show
    @report = Report.find(params[:id])
  end

  def new
    @report = Report.new
  end

  def create
    @report = Report.new(report_params)
    @report.user = current_user
    if @report.save
      redirect_to reports_path
    else
      render :new
    end
  end

  def edit
    @report = Report.find(params[:id])

  end

  def update
  end

  def destroy
  end

  private
  def report_params
    params.require(:report).permit(:title, :date, :category)
  end
end
