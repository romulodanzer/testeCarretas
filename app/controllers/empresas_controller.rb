class EmpresasController < ApplicationController
  before_action :set_empresa, only: %i[show edit update destroy]
  before_action :authorize_empresa, except: :index
  after_action :verify_authorized, except: :index
  after_action :verify_policy_scoped, only: :index

  # GET /empresas or /empresas.json
  def index
    @empresas = policy_scope(Empresa)
  end

  # GET /empresas/1 or /empresas/1.json
  def show
  end

  # GET /empresas/new
  def new
    @empresa = Empresa.new
  end

  # GET /empresas/1/edit
  def edit
  end

  # POST /empresas or /empresas.json
  def create
    @empresa = Empresa.new(empresa_params)
    if @empresa.save
      redirect_to @empresa, notice: "Empresa was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /empresas/1 or /empresas/1.json
  def update
    if @empresa.update(empresa_params)
      redirect_to @empresa, notice: 'Empresa atualizada com sucesso.'
    else
      render :edit
    end
  end

  # DELETE /empresas/1 or /empresas/1.json
  def destroy
    @empresa.destroy
    redirect_to empresas_path, status: :see_other, notice: "Empresa was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_empresa
    @empresa = Empresa.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def empresa_params
    params.require(:empresa).permit(:nome, :cnpj, :endereco, :logotipo)
  end

  # Authorize Empresa for actions that require it
  def authorize_empresa
    authorize @empresa
  end
end