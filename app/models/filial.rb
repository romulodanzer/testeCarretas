class Filial < ApplicationRecord
  belongs_to :empresa
  has_many :users_filials
  has_many :users, through: :users_filials
end