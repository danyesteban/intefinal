class AutomotorasController < ApplicationController
  before_action :set_automotora, only: [:show, :edit, :update, :destroy]

  # GET /automotoras
  # GET /automotoras.json
  def index
    @automotoras = Automotora.recientes.all
  end

  # GET /automotoras/1
  # GET /automotoras/1.json
  def show
  end

  # GET /automotoras/new
  def new
    @automotora = Automotora.new
  end

  # GET /automotoras/1/edit
  def edit
  end

  # POST /automotoras
  # POST /automotoras.json
  def create
    @automotora = Automotora.new(automotora_params)

    respond_to do |format|
      if @automotora.save
        format.html { redirect_to @automotora, notice: 'Automotora was successfully created.' }
        format.json { render :show, status: :created, location: @automotora }
      else
        format.html { render :new }
        format.json { render json: @automotora.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /automotoras/1
  # PATCH/PUT /automotoras/1.json
  def update
    respond_to do |format|
      if @automotora.update(automotora_params)
        format.html { redirect_to @automotora, notice: 'Automotora was successfully updated.' }
        format.json { render :show, status: :ok, location: @automotora }
      else
        format.html { render :edit }
        format.json { render json: @automotora.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /automotoras/1
  # DELETE /automotoras/1.json
  def destroy
    @automotora.destroy
    respond_to do |format|
      format.html { redirect_to automotoras_url, notice: 'Automotora was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_automotora
      @automotora = Automotora.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def automotora_params
      params.require(:automotora).permit(:codigo, :marca, :precio, :modelo, :color, :usuario_id)
    end
end
