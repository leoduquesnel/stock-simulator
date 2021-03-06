# == Schema Information
#
# Table name: stock_tickers
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class StockTickerTest < ActiveSupport::TestCase
  test "should have a name" do
    st = StockTicker.new 
    assert_not st.save

    st = StockTicker.new(name: StockTicker.generate_name)
    assert st.save
  end

end
