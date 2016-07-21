class Problem < ApplicationRecord
  after_initialize :set_default_value
  belongs_to :theme
  belongs_to :section

  private
  def set_default_value
    self.correct_counter ||= 0
  end
end
