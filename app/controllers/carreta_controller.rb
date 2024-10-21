class CarretaController < ApplicationController
  before_action :set_carretum, only: %i[ show edit update destroy ]

  # GET /carreta or /carreta.json s
  def index
    @carreta = Carretum.all
  end

  # GET /carreta/1 or /carreta/1.json
  def show
  end

  # GET /carreta/new
  def new
    @carretum = Carretum.new
  end

  # GET /carreta/1/edit
  def edit
  end

  # POST /carreta or /carreta.json
  def create
    @carretum = Carretum.new(carretum_params)

    respond_to do |format|
      if @carretum.save
        format.html { redirect_to @carretum, notice: "Carretum was successfully created." }
        format.json { render :show, status: :created, location: @carretum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @carretum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carreta/1 or /carreta/1.json
  def update
    respond_to do |format|
      if @carretum.update(carretum_params)
        format.html { redirect_to @carretum, notice: "Carretum was successfully updated." }
        format.json { render :show, status: :ok, location: @carretum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @carretum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carreta/1 or /carreta/1.json
  def destroy
    @carretum.destroy

    respond_to do |format|
      format.html { redirect_to carreta_path, status: :see_other, notice: "Carretum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carretum
      @carretum = Carretum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def carretum_params
      params.require(:carretum).permit(:placa, :tipo, :tamanho, :eixos)
    end
end
