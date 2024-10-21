class Empresa < ApplicationRecord
    mount_uploader :logotipo, LogotipoUploader
    has_many :filials
    has_many :users
  end