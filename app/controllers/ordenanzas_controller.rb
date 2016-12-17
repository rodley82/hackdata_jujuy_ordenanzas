class OrdenanzasController < ApplicationController
  before_action :set_ordenanza, only: [:show, :edit, :update, :destroy]

  # GET /ordenanzas
  # GET /ordenanzas.json
  def index
    @ordenanzas = Ordenanza.limit(30)
  end

  # GET /ordenanzas/1
  # GET /ordenanzas/1.json
  def show
  end

  # GET /ordenanzas/new
  def new
    @ordenanza = Ordenanza.new
  end

  # GET /ordenanzas/1/edit
  def edit
  end

  # POST /ordenanzas
  # POST /ordenanzas.json
  def create
    @ordenanza = Ordenanza.new(ordenanza_params)

    respond_to do |format|
      if @ordenanza.save
        format.html { redirect_to @ordenanza, notice: 'Ordenanza was successfully created.' }
        format.json { render :show, status: :created, location: @ordenanza }
      else
        format.html { render :new }
        format.json { render json: @ordenanza.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ordenanzas/1
  # PATCH/PUT /ordenanzas/1.json
  def update
    respond_to do |format|
      if @ordenanza.update(ordenanza_params)
        format.html { redirect_to @ordenanza, notice: 'Ordenanza was successfully updated.' }
        format.json { render :show, status: :ok, location: @ordenanza }
      else
        format.html { render :edit }
        format.json { render json: @ordenanza.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordenanzas/1
  # DELETE /ordenanzas/1.json
  def destroy
    @ordenanza.destroy
    respond_to do |format|
      format.html { redirect_to ordenanzas_url, notice: 'Ordenanza was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ordenanza
      @ordenanza = Ordenanza.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ordenanza_params
      params.require(:ordenanza).permit(:titulo, :fecha)
    end
end
