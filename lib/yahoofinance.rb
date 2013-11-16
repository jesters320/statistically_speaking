class YahooFinance
  
	@@base_uri = "http://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20yahoo.finance.quotes%20WHERE%20symbol%3D'MSFT'&format=json&diagnostics=true&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys"

	def self.getQuote
		response = HTTParty.get(@@base_uri)
		if response["query"]["results"] == nil
			@price = 0
		else
			@price = response["query"]["results"]["quote"]["LastTradePriceOnly"]
		end
	end
end