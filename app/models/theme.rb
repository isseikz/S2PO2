class Theme < ApplicationRecord
  belongs_to :section
  has_many :problems
end
