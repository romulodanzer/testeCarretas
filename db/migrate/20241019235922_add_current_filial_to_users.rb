class AddCurrentFilialToUsers < ActiveRecord::Migration[6.1]
  def change
    unless column_exists?(:users, :current_filial_id)
      
      add_reference :users, :current_filial, foreign_key: { to_table: :filials }
    end
  end
end