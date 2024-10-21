class VistoriaController < ApplicationController
  before_action :set_vistorium, only: %i[ show edit update destroy ]

  # GET /vistoria or /vistoria.json
  def index
    @vistoria = Vistorium.all
  end

  # GET /vistoria/1 or /vistoria/1.json
  def show
  end

  # GET /vistoria/new
  def new
    @vistorium = Vistorium.new
  end

  # GET /vistoria/1/edit
  def edit
  end

  # POST /vistoria or /vistoria.json
  def create
    @vistorium = Vistorium.new(vistorium_params)

    respond_to do |format|
      if @vistorium.save
        format.html { redirect_to @vistorium, notice: "Vistorium was successfully created." }
        format.json { render :show, status: :created, location: @vistorium }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vistorium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vistoria/1 or /vistoria/1.json
  def update
    respond_to do |format|
      if @vistorium.update(vistorium_params)
        format.html { redirect_to @vistorium, notice: "Vistorium was successfully updated." }
        format.json { render :show, status: :ok, location: @vistorium }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vistorium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vistoria/1 or /vistoria/1.json
  def destroy
    @vistorium.destroy

    respond_to do |format|
      format.html { redirect_to vistoria_path, status: :see_other, notice: "Vistorium was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vistorium
      @vistorium = Vistorium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vistorium_params
      params.require(:vistorium).permit(:carreta_id, :vistoriador, :destino, :tipo_vistoria, :data, :arquivo_pdf)
    end
end
