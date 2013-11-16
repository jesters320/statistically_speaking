require 'spec_helper'

describe "stocks/show" do
  before(:each) do
    @stock = assign(:stock, stub_model(Stock,
      :name => "Name",
      :ticker => "Ticker",
      :price => "9.99",
      :{ => "",
      :=, => "=,",
      : => "",
      := => "="
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Ticker/)
    rendered.should match(/9.99/)
    rendered.should match(//)
    rendered.should match(/=,/)
    rendered.should match(//)
    rendered.should match(/=/)
  end
end
