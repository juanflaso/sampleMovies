class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :titulo
      t.string :director
      t.text :reparto
      t.text :plan
      t.integer :calificacion

      t.timestamps
    end
  end
end
