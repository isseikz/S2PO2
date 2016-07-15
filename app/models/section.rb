class Section < ApplicationRecord
  belongs_to :subject
  has_many :themes
  has_many :problems
end
