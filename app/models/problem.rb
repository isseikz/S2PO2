class Problem < ApplicationRecord
  after_initialize :set_default_value
  belongs_to :theme
  belongs_to :section
  has_many :sheet_problems
  has_many :sheets, through: :sheet_problems

  private
  def set_default_value
    self.correct_counter ||= 0
  end
  
end
