class ExtinctionsController < ApplicationController
  before_action :set_extinction, only: [:show, :edit, :update, :destroy]

  # GET /extinctions
  # GET /extinctions.json
  def index
    @extinctions = Extinction.all
  end

  # GET /extinctions/1
  # GET /extinctions/1.json
  def show
  end

  # GET /extinctions/new
  def new
    @extinction = Extinction.new
  end

  # GET /extinctions/1/edit
  def edit
  end

  # POST /extinctions
  # POST /extinctions.json
  def create
    @extinction = Extinction.new(extinction_params)

    respond_to do |format|
      if @extinction.save
        format.html { redirect_to @extinction, notice: 'Extinction was successfully created.' }
        format.json { render :show, status: :created, location: @extinction }
      else
        format.html { render :new }
        format.json { render json: @extinction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /extinctions/1
  # PATCH/PUT /extinctions/1.json
  def update
    respond_to do |format|
      if @extinction.update(extinction_params)
        format.html { redirect_to @extinction, notice: 'Extinction was successfully updated.' }
        format.json { render :show, status: :ok, location: @extinction }
      else
        format.html { render :edit }
        format.json { render json: @extinction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /extinctions/1
  # DELETE /extinctions/1.json
  def destroy
    @extinction.destroy
    respond_to do |format|
      format.html { redirect_to extinctions_url, notice: 'Extinction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_extinction
      @extinction = Extinction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def extinction_params
      params.require(:extinction).permit(:animal_name, :approx_extinction_at)
    end
end
