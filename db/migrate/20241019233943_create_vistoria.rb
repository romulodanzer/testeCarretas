class CreateVistoria < ActiveRecord::Migration[6.1]
  def change
    create_table :vistoria do |t|
      t.references :carreta, null: false, foreign_key: true
      t.string :vistoriador
      t.string :destino
      t.string :tipo_vistoria
      t.date :data
      t.string :arquivo_pdf

      t.timestamps
    end
  end
end
