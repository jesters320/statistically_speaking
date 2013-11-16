require 'spec_helper'

describe "stocks/index" do
  before(:each) do
    assign(:stocks, [
      stub_model(Stock,
        :name => "Name",
        :ticker => "Ticker",
        :price => "9.99",
        :{ => "",
        :=, => "=,",
        : => "",
        := => "="
      ),
      stub_model(Stock,
        :name => "Name",
        :ticker => "Ticker",
        :price => "9.99",
        :{ => "",
        :=, => "=,",
        : => "",
        := => "="
      )
    ])
  end

  it "renders a list of stocks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Ticker".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "=,".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "=".to_s, :count => 2
  end
end
