Rails.application.routes.draw do
  # Rotas para Devise (autenticação)
  devise_for :users

  # Rotas para Vistorias
  resources :vistoria

  # Rotas para Carretas
  resources :carreta

  # Rotas para Filiais
  resources :filials

  # Rotas para Empresas
  resources :empresas

  # Rotas para usuários (admin master aprova usuários)
  resources :users, only: [:index] do
    member do
      patch :approve
    end
  end

  # Definir a rota root (opcional) 
  root to: 'empresas#index' # Mude 'empresas#index' para a ação inicial que deseja
  patch '/switch_filial/:id', to: 'users#switch_filial', as: :switch_filial

end