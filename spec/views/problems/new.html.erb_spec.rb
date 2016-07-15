require 'rails_helper'

RSpec.describe "problems/new", type: :view do
  before(:each) do
    assign(:problem, Problem.new(
      :theme_id => nil,
      :category => 1,
      :level => 1,
      :content => "MyText",
      :answer => "MyText",
      :correct_counter => 1
    ))
  end

  it "renders new problem form" do
    render

    assert_select "form[action=?][method=?]", problems_path, "post" do

      assert_select "input#problem_theme_id_id[name=?]", "problem[theme_id_id]"

      assert_select "input#problem_type[name=?]", "problem[type]"

      assert_select "input#problem_level[name=?]", "problem[level]"

      assert_select "textarea#problem_content[name=?]", "problem[content]"

      assert_select "textarea#problem_answer[name=?]", "problem[answer]"

      assert_select "input#problem_correct_counter[name=?]", "problem[correct_counter]"
    end
  end
end
