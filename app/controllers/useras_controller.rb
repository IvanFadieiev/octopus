class UserasController < ApplicationController
  before_action :set_usera, only: [:show, :edit, :update, :destroy]

  # GET /useras
  # GET /useras.json
  def index
    @useras = Usera.all
  end

  # GET /useras/1
  # GET /useras/1.json
  def show
  end

  # GET /useras/new
  def new
    @usera = Usera.new
  end

  # GET /useras/1/edit
  def edit
  end

  # POST /useras
  # POST /useras.json
  def create
    @usera = Usera.new(usera_params)

    respond_to do |format|
      if @usera.save
        format.html { redirect_to @usera, notice: 'Usera was successfully created.' }
        format.json { render :show, status: :created, location: @usera }
      else
        format.html { render :new }
        format.json { render json: @usera.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /useras/1
  # PATCH/PUT /useras/1.json
  def update
    respond_to do |format|
      if @usera.update(usera_params)
        format.html { redirect_to @usera, notice: 'Usera was successfully updated.' }
        format.json { render :show, status: :ok, location: @usera }
      else
        format.html { render :edit }
        format.json { render json: @usera.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /useras/1
  # DELETE /useras/1.json
  def destroy
    @usera.destroy
    respond_to do |format|
      format.html { redirect_to useras_url, notice: 'Usera was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usera
      @usera = Usera.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usera_params
      params.require(:usera).permit(:name, :age)
    end
end
