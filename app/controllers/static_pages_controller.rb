class StaticPagesController < ApplicationController
  require "yahoofinance"
  
  def home
	@price = YahooFinance.getQuote 'GOOG'
  end
  
end
