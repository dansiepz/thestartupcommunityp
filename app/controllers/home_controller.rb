class HomeController < ApplicationController
	skip_before_filter :authenticate_user!
  def index
    @user_profiles = UserProfile.all
    @business_profiles = BusinessProfile.all
  end
end
