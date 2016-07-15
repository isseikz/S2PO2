class CreateThemes < ActiveRecord::Migration[5.0]
  def change
    create_table :themes do |t|
      t.references :section, foreign_key: true
      t.integer :number
      t.string :title

      t.timestamps
    end
  end
end
