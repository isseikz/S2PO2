require 'rails_helper'

RSpec.describe "problems/edit", type: :view do
  before(:each) do
    @problem = assign(:problem, Problem.create!(
      :theme => 1,
      :category => 1,
      :level => 1,
      :content => "MyText",
      :answer => "MyText",
      :correct_counter => 1
    ))
  end

  it "renders the edit problem form" do
    render

    assert_select "form[action=?][method=?]", problem_path(@problem), "post" do

      assert_select "input#problem_theme_id[name=?]", "problem[theme_id]"

      assert_select "input#problem_category[name=?]", "problem[category]"

      assert_select "input#problem_level[name=?]", "problem[level]"

      assert_select "textarea#problem_content[name=?]", "problem[content]"

      assert_select "textarea#problem_answer[name=?]", "problem[answer]"

      assert_select "input#problem_correct_counter[name=?]", "problem[correct_counter]"
    end
  end
end
