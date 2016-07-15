class CreateProblems < ActiveRecord::Migration[5.0]
  def change
    create_table :problems do |t|
      t.references :theme_id, foreign_key: true
      t.integer :type
      t.integer :level
      t.text :content
      t.text :answer
      t.integer :correct_counter

      t.timestamps
    end
  end
end
