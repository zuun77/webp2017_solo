class ConstellationsController < ApplicationController
  before_action :set_constellation, only: [:show, :edit, :update, :destroy]

  # GET /constellations
  # GET /constellations.json
  def index
    @constellations = Constellation.all
  end

  # GET /constellations/1
  # GET /constellations/1.json
  def show
  end

  # GET /constellations/new
  def new
    @constellation = Constellation.new
  end

  # GET /constellations/1/edit
  def edit
  end

  # POST /constellations
  # POST /constellations.json
  def create
    @constellation = Constellation.new(constellation_params)

    respond_to do |format|
      if @constellation.save
        format.html { redirect_to @constellation, notice: 'Constellation was successfully created.' }
        format.json { render :show, status: :created, location: @constellation }
      else
        format.html { render :new }
        format.json { render json: @constellation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /constellations/1
  # PATCH/PUT /constellations/1.json
  def update
    respond_to do |format|
      if @constellation.update(constellation_params)
        format.html { redirect_to @constellation, notice: 'Constellation was successfully updated.' }
        format.json { render :show, status: :ok, location: @constellation }
      else
        format.html { render :edit }
        format.json { render json: @constellation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /constellations/1
  # DELETE /constellations/1.json
  def destroy
    @constellation.destroy
    respond_to do |format|
      format.html { redirect_to constellations_url, notice: 'Constellation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_constellation
      @constellation = Constellation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def constellation_params
      params.fetch(:constellation, {})
    end
end
