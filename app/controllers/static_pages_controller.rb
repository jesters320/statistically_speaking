class StaticPagesController < ApplicationController
  require "yahoofinance"
  
  def home
	@price = YahooFinance.getQuote
  end
  
end
