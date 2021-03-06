# == Schema Information
#
# Table name: stock_prices
#
#  id              :integer          not null, primary key
#  date            :date
#  price           :float
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  stock_ticker_id :integer
#

class StockPrice < ActiveRecord::Base
  validates_presence_of :date, :price, :stock_ticker_id
  validates :stock_ticker, presence: true

  validates_uniqueness_of :date, :scope => :stock_ticker_id

  validates :stock_ticker_id, numericality: { greater_than: 0 }
  validates :price, numericality: { greater_than: 0 }

  belongs_to :stock_ticker
end
