class CreateTops < ActiveRecord::Migration[5.1]
  def change
    create_table :tops do |t|
      t.references :person, foreign_key: true
      t.references :movie, foreign_key: true

      t.timestamps
    end
  end
end
