require 'HTTParty'
require 'JSON'

class YahooFinance
  include HTTParty
  
	#base_uri = "http://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20yahoo.finance.quote%20where%20symbol%20%3D%20%22YHOO%22&diagnostics=true&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys"

	def self.getQuote
		#response = HTTParty.get(base_uri)
		#@price = response[‘query’][‘results’][‘quote’][‘price’]
		15
	end
end