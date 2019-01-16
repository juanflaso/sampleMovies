class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :nombres
      t.string :apellidos
      t.string :fecha_nac
      t.string :plan
      t.string :ciudad
      t.string :pais
      t.string :usuario
      t.string :password

      t.timestamps
    end
  end
end
