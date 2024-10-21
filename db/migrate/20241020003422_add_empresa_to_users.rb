class AddEmpresaToUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :empresa, foreign_key: true

  end
end
