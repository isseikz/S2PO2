class SheetsController < ApplicationController
    def new
    end
    def create
      @sheet = Array.new
      Problem.all.limit(3).each do |p|
        @sh = p.sheets.create(:user_id => current_user.id)
        if @sh.save
          @sheet << @sh.problems.first.content.html_safe
        else
        end
      end
    end
    def extract_three_problems
      Problem.all.limit(3).each do |p|
        @sh = p.sheets.create(:user_id => current_user.id)
        @sh.save
      end
    end
    def wrap_three_problems_up_to_html
      Sheet.order("created_at DESC").limit(3).map { |e| e.problems.first.content}

    end
end
