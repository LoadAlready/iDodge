class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all

  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new

  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    counter = 0
    params["users_container"].each do |user|
    if user["name"] != ""
      @user = User.new(name: params['users_container'][counter]['name'], team_id: 1)
      @user.save
    end
    counter += 1
  end
  redirect_to champions_path
    # @user_1 = User.new(user_params)
    # @user_2 = User.new(user_params)
    # @user_3 = User.new(user_params)
    # @user_4 = User.new(user_params)
    # @user_5 = User.new(user_params)
    #
    # @user_1.save
    # @user_2.save
    # @user_3.save
    # @user_4.save
    # @user_5.save


  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def championteam_params
      params.require(:user).permit(:name, :team_id)
    end
end
