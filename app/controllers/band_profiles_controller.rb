class BandProfilesController < ApplicationController
  before_action :set_band_profile, only: [:show, :edit, :update, :destroy]

  # GET /band_profiles
  # GET /band_profiles.json
  def index
    @band_profiles = BandProfile.all
  end

  # GET /band_profiles/1
  # GET /band_profiles/1.json
  def show
  end

  # GET /band_profiles/new
  def new
    @band_profile = BandProfile.new
  end

  # GET /band_profiles/1/edit
  def edit
  end

  # POST /band_profiles
  # POST /band_profiles.json
  def create
    @band_profile = BandProfile.new(band_profile_params)
    @band_profile.user_id = current_user.id

    respond_to do |format|
      if @band_profile.save
        format.html { redirect_to admin_path, notice: 'Band profile was successfully created.' }
        format.json { render action: 'show', status: :created, location: @band_profile }
      else
        format.html { render action: 'new' }
        format.json { render json: @band_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /band_profiles/1
  # PATCH/PUT /band_profiles/1.json
  def update
    respond_to do |format|
      if @band_profile.update(band_profile_params)
        format.html { redirect_to admin_path, notice: 'Band profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @band_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /band_profiles/1
  # DELETE /band_profiles/1.json
  def destroy
    @band_profile.destroy
    respond_to do |format|
      format.html { redirect_to band_profiles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_band_profile
      @band_profile = BandProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def band_profile_params
      params.require(:band_profile).permit(:name, :info, :user_id)
    end
end
