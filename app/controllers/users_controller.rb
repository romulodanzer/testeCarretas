class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_master!

  def index
    @users = User.where(approved: false)
  end

  def approve
    @user = User.find(params[:id])
    if @user.update(approved: true)
      redirect_to users_path, notice: 'Usuário aprovado com sucesso.'
    else
      redirect_to users_path, alert: 'Erro ao aprovar o usuário.'
    end
  end

  def switch_filial
    filial = Filial.find(params[:id])
    if current_user.filials.include?(filial)
      current_user.update(current_filial: filial)
      redirect_to root_path, notice: "Filial alterada para #{filial.nome}."
    else
      redirect_to root_path, alert: 'Filial não autorizada para este usuário.'
    end
  end

  private

  def authorize_master!
    redirect_to root_path, alert: 'Acesso não autorizado!' unless current_user.master?
  end
end