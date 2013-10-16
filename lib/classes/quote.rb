class Quote
  attr_accessor :name, :ticker, :time, :price

  def initialize(attributes = {})
    @name  = attributes[:name]
    @ticker  = attributes[:ticker]
	@time  = attributes[:time]
	@price  = attributes[:price]
  end

  def formatted_wuote
    "#{@ticker}: #{@price} <#{@time}>"
  end
end