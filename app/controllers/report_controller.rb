class ReportController < ApplicationController
  def index
  end

  def output
    @report = Report.new(params[:year].to_i, params[:month].to_i)
  end
end