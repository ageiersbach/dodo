class EndangeredSpeciesController < ApplicationController
  before_action :set_endangered_specy, only: [:show, :edit, :update, :destroy]

  # GET /endangered_species
  # GET /endangered_species.json
  def index
    @endangered_species = EndangeredSpecy.all
  end

  # GET /endangered_species/1
  # GET /endangered_species/1.json
  def show
  end

  # GET /endangered_species/new
  def new
    @endangered_specy = EndangeredSpecy.new
  end

  # GET /endangered_species/1/edit
  def edit
  end

  # POST /endangered_species
  # POST /endangered_species.json
  def create
    @endangered_specy = EndangeredSpecy.new(endangered_specy_params)

    respond_to do |format|
      if @endangered_specy.save
        format.html { redirect_to @endangered_specy, notice: 'Endangered specy was successfully created.' }
        format.json { render :show, status: :created, location: @endangered_specy }
      else
        format.html { render :new }
        format.json { render json: @endangered_specy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /endangered_species/1
  # PATCH/PUT /endangered_species/1.json
  def update
    respond_to do |format|
      if @endangered_specy.update(endangered_specy_params)
        format.html { redirect_to @endangered_specy, notice: 'Endangered specy was successfully updated.' }
        format.json { render :show, status: :ok, location: @endangered_specy }
      else
        format.html { render :edit }
        format.json { render json: @endangered_specy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /endangered_species/1
  # DELETE /endangered_species/1.json
  def destroy
    @endangered_specy.destroy
    respond_to do |format|
      format.html { redirect_to endangered_species_url, notice: 'Endangered specy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_endangered_specy
      @endangered_specy = EndangeredSpecy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def endangered_specy_params
      params.require(:endangered_specy).permit(:name, :candidate, :priority)
    end
end
