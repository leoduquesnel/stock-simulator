class DashboardController < ApplicationController
  def index
    @stock_tickers = StockTicker.select(:id, :name, :updated_at).order('name asc').page params[:page]
    @stock_price = StockPrice.new
  end
end
