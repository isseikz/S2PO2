class CreateSheetProblems < ActiveRecord::Migration[5.0]
  def change
    create_table :sheet_problems do |t|
      t.belongs_to :sheet, index: true
      t.belongs_to :problem, index: true

      t.timestamps
    end
  end
end
