class Sheet < ApplicationRecord
  belongs_to :user
  has_many :sheet_problems
  has_many :problems, through: :sheet_problems
end
