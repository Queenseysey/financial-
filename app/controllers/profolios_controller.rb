class ProfoliosController < ApplicationController
  before_action :set_profolio, only: [:show, :edit, :update, :destroy]

  # GET /profolios
  # GET /profolios.json
  def index
    @profolios = Profolio.all
  end

  # GET /profolios/1
  # GET /profolios/1.json
  def show
  end

  # GET /profolios/new
  def new
    @profolio = Profolio.new
  end

  # GET /profolios/1/edit
  def edit
  end

  # POST /profolios
  # POST /profolios.json
  def create
    @profolio = Profolio.new(profolio_params)

    respond_to do |format|
      if @profolio.save
        format.html { redirect_to @profolio, notice: 'Profolio was successfully created.' }
        format.json { render :show, status: :created, location: @profolio }
      else
        format.html { render :new }
        format.json { render json: @profolio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profolios/1
  # PATCH/PUT /profolios/1.json
  def update
    respond_to do |format|
      if @profolio.update(profolio_params)
        format.html { redirect_to @profolio, notice: 'Profolio was successfully updated.' }
        format.json { render :show, status: :ok, location: @profolio }
      else
        format.html { render :edit }
        format.json { render json: @profolio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profolios/1
  # DELETE /profolios/1.json
  def destroy
    @profolio.destroy
    respond_to do |format|
      format.html { redirect_to profolios_url, notice: 'Profolio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profolio
      @profolio = Profolio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profolio_params
      params.require(:profolio).permit(:name, :password, :stocks)
    end
end
