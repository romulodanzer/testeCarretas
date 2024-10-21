class CreateFilials < ActiveRecord::Migration[6.1]
  def change
    create_table :filials do |t|
      t.string :nome
      t.references :empresa, null: false, foreign_key: true

      t.timestamps
    end
  end
end
