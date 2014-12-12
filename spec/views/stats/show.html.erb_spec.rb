require 'rails_helper'

RSpec.describe "stats/show", :type => :view do
  before(:each) do
    @stat = assign(:stat, Stat.create!(
      :aname => "Aname",
      :age => 1,
      :height => 2,
      :weight => 3,
      :wellness_goals => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Aname/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/MyText/)
  end
end
