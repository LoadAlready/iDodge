class ChampionPropertiesController < ApplicationController
  before_action :set_champion_property, only: [:show, :edit, :update, :destroy]

  # GET /champion_properties
  # GET /champion_properties.json
  def index
    @champion_properties = ChampionProperty.all
  end

  # GET /champion_properties/1
  # GET /champion_properties/1.json
  def show
  end

  # GET /champion_properties/new
  def new
    @champion_property = ChampionProperty.new
  end

  # GET /champion_properties/1/edit
  def edit
  end

  # POST /champion_properties
  # POST /champion_properties.json
  def create
    @champion_property = ChampionProperty.new(champion_property_params)

    respond_to do |format|
      if @champion_property.save
        format.html { redirect_to @champion_property, notice: 'Champion property was successfully created.' }
        format.json { render :show, status: :created, location: @champion_property }
      else
        format.html { render :new }
        format.json { render json: @champion_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /champion_properties/1
  # PATCH/PUT /champion_properties/1.json
  def update
    respond_to do |format|
      if @champion_property.update(champion_property_params)
        format.html { redirect_to @champion_property, notice: 'Champion property was successfully updated.' }
        format.json { render :show, status: :ok, location: @champion_property }
      else
        format.html { render :edit }
        format.json { render json: @champion_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /champion_properties/1
  # DELETE /champion_properties/1.json
  def destroy
    @champion_property.destroy
    respond_to do |format|
      format.html { redirect_to champion_properties_url, notice: 'Champion property was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_champion_property
      @champion_property = ChampionProperty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def champion_property_params
      params.fetch(:champion_property, {})
    end
end
