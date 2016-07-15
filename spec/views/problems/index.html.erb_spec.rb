require 'rails_helper'

RSpec.describe "problems/index", type: :view do
  before(:each) do
    assign(:problems, [
      Problem.create!(
        :theme_id => nil,
        :category => 2,
        :level => 3,
        :content => "MyText",
        :answer => "MyText",
        :correct_counter => 4
      ),
      Problem.create!(
        :theme_id => nil,
        :type => 2,
        :level => 3,
        :content => "MyText",
        :answer => "MyText",
        :correct_counter => 4
      )
    ])
  end

  it "renders a list of problems" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
