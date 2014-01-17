class HomeController < ApplicationController
  def index
    @user_profiles = UserProfile.all
    @business_profiles = BusinessProfile.all
  end
end
