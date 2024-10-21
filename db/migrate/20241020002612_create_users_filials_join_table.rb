class CreateUsersFilialsJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_table :users_filials do |t|
      t.references :user, null: false, foreign_key: true
      t.references :filial, null: false, foreign_key: true

      t.timestamps
    end
  end
end