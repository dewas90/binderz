class ProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_profile, only: [:update, :destroy]

  def index
    @profiles = Profile.all
  end

  def show
    @profile = Profile.find(current_user.id)
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user_id = current_user.id
    if @profile.save
      redirect_to profiles_path
    else
      render :new
    end
  end

  def edit
    @profile = Profile.find(current_user.profile.id)
  end

  def update
    @profile.update(profile_params)
      redirect_to profile_path(@profile)
  end

  def destroy
    @profile.destroy
    redirect_to profiles_path
  end

  private

  def profile_params
    params.require(:profile).permit(:first_name, :last_name)
  end

  def set_profile
    @profile = Profile.find(params[:id])
  end
end
