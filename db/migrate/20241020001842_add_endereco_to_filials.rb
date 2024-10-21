class AddEnderecoToFilials < ActiveRecord::Migration[6.1]
  def change
    add_column :filials, :endereco, :string
  end
end
