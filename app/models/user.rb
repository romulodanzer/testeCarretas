class User < ApplicationRecord
  belongs_to :empresa, optional: true
  belongs_to :current_filial, class_name: 'Filial', optional: true

  has_many :users_filials
  has_many :filials, through: :users_filials

  enum role: { user: 0, master: 1 }

  # Devise modules
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end