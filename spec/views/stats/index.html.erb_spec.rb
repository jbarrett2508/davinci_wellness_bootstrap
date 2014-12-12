require 'rails_helper'

RSpec.describe "stats/index", :type => :view do
  before(:each) do
    assign(:stats, [
      Stat.create!(
        :aname => "Aname",
        :age => 1,
        :height => 2,
        :weight => 3,
        :wellness_goals => "MyText"
      ),
      Stat.create!(
        :aname => "Aname",
        :age => 1,
        :height => 2,
        :weight => 3,
        :wellness_goals => "MyText"
      )
    ])
  end

  it "renders a list of stats" do
    render
    assert_select "tr>td", :text => "Aname".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
