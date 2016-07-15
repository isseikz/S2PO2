class RenameTypeColumnToProblems < ActiveRecord::Migration[5.0]
  def change
    rename_column :problems, :type, :category
  end
end
