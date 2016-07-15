require 'rails_helper'

RSpec.describe "problems/show", type: :view do
  before(:each) do
    @problem = assign(:problem, Problem.create!(
      :theme => 1,
      :category => 2,
      :level => 3,
      :content => "MyText",
      :answer => "MyText",
      :correct_counter => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/4/)
  end
end
