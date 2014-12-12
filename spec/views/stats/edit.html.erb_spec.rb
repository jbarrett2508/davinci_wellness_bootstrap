require 'rails_helper'

RSpec.describe "stats/edit", :type => :view do
  before(:each) do
    @stat = assign(:stat, Stat.create!(
      :aname => "MyString",
      :age => 1,
      :height => 1,
      :weight => 1,
      :wellness_goals => "MyText"
    ))
  end

  it "renders the edit stat form" do
    render

    assert_select "form[action=?][method=?]", stat_path(@stat), "post" do

      assert_select "input#stat_aname[name=?]", "stat[aname]"

      assert_select "input#stat_age[name=?]", "stat[age]"

      assert_select "input#stat_height[name=?]", "stat[height]"

      assert_select "input#stat_weight[name=?]", "stat[weight]"

      assert_select "textarea#stat_wellness_goals[name=?]", "stat[wellness_goals]"
    end
  end
end
