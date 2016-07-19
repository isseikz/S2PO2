class CreateSections < ActiveRecord::Migration[5.0]
  def change
    create_table :sections do |t|
      t.references :subject, foreign_key: true
      t.integer :number
      t.string :title

      t.timestamps
    end
  end
end
