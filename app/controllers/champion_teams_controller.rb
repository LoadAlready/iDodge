class ChampionTeamsController < ApplicationController
  before_action :set_championteam, only: [:show, :edit, :update, :destroy]

  # GET /championteams
  # GET /championteams.json
  def index
    @user1 = helpers.view_game_params
    @champion_teams = ChampionTeam.all
  end
  def index1

  end

  # GET /championteams/1
  # GET /championteams/1.json
  def show
  end

  # GET /championteams/new
  def new
    @champion_team = ChampionTeam.new
    @users_arr = []
    5.times do
      @users_arr << User.new
    end
  end

  # GET /championteams/1/edit
  def edit
  end

  def create
    params["users_container"].each do |user|
      if user["name"] != ""
        User.create(championteam_params(user))
      end
    end
  end

  # PATCH/PUT /championteams/1
  # PATCH/PUT /championteams/1.json
  def update
    respond_to do |format|
      if @championteam.update(championteam_params)
        format.html { redirect_to @championteam, notice: 'Newgame was successfully updated.' }
        format.json { render :show, status: :ok, location: @championteam }
      else
        format.html { render :edit }
        format.json { render json: @championteam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /championteams/1
  # DELETE /championteams/1.json
  def destroy
    @championteam.destroy
    respond_to do |format|
      format.html { redirect_to championteams_url, notice: 'Newgame was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def champion_params
      params.require(:champion).permit(:name)
    end

    def championteam_params
      params.require(:user).permit(:name, :team_id)
    end
  end
