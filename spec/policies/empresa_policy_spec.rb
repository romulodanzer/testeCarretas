class EmpresaPolicy
  attr_reader :user, :empresa

  def initialize(user, empresa)
    @user = user
    @empresa = empresa
  end

  def index?
    user.master? || user.has_permission?(:view, empresa)
  end

  def update?
    user.master? || user.has_permission?(:edit, empresa)
  end

  def destroy?
    user.master?
  end
end