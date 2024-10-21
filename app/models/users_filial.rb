class UsersFilial < ApplicationRecord
    belongs_to :user
    belongs_to :filial
  end