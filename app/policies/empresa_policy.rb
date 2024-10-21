class EmpresaPolicy < ApplicationPolicy
  def index?
    user.present? # Permite que qualquer usuário autenticado veja as empresas
  end

  def show?
    user.present? # Permite que qualquer usuário autenticado veja os detalhes de uma empresa
  end

  def create?
    user.master? # Apenas usuários com perfil de master podem criar empresas
  end

  def update?
    user.master? # Apenas usuários com perfil de master podem editar empresas
  end

  def destroy?
    user.master? # Apenas usuários com perfil de master podem deletar empresas
  end

  class Scope < Scope
    def resolve
      if user.master?
        scope.all # Usuários master podem ver todas as empresas
      else
        scope.none # Usuários normais não têm permissão de visualizar as empresas
      end
    end
  end
end