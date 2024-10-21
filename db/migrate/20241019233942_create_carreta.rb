class CreateCarreta < ActiveRecord::Migration[6.1]
  def change
    create_table :carreta do |t|
      t.string :placa
      t.string :tipo
      t.string :tamanho
      t.integer :eixos

      t.timestamps
    end
  end
end
