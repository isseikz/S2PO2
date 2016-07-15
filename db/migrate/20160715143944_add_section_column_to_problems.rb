class AddSectionColumnToProblems < ActiveRecord::Migration[5.0]
  def change
    add_reference :problems, :section, foreign_key: true
  end
end
