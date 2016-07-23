class SheetsController < ApplicationController
  before_action :require_user, only:[:new]
  
  def new
    @new_sheet_form = NewSheetForm.new
  end
  
  def create
    @sheet = Array.new
    if params[:new_sheet_form][:type] == "1" then
      extract_three_problems
    elsif params[:new_sheet_form][:type] =="2" then
      extract_three_non_soleved_problems
    elsif params[:new_sheet_form][:type] == "3" then
      extract_three_problems_rondomly
    else
      flash[:error] = "unregistered number selected"
    end
    
  end
  
  def extract_three_problems
    Problem.all.limit(3).each do |p|
      @sh = p.sheets.create(:user_id => current_user.id)
      if @sh.save
        @sheet << @sh.problems.first.content.html_safe
      end
    end
  end
  
  def extract_three_problems_rondomly
    Problem.order("RANDOM()").limit(3).each do |p|
      @sh = p.sheets.create(:user_id => current_user.id)
      if @sh.save
        @sheet << @sh.problems.first.content.html_safe
      end
    end
  end
  
  def extract_three_non_soleved_problems
    Problem.where(correct_counter: 0).limit(3).each do |p|
      @sh = p.sheets.create(:user_id => current_user.id)
      if @sh.save
        @sheet << @sh.problems.first.content.html_safe
      end
    end
  end
  
  def push_into_sheet 
    @sh = self.sheets.create(:user_id => current_user.id)
    if @sh.save
      @sheet << @sh.problems.first.content.html_safe
    end
  end

end
