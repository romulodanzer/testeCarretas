class CreateEmpresas < ActiveRecord::Migration[6.1]
  def change
    create_table :empresas do |t|
      t.string :nome
      t.string :cnpj
      t.string :endereco
      t.string :logotipo

      t.timestamps
    end
  end
end
