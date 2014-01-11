class ProfileType < ActiveRecord::Base
	has_many :business_profile_types
	has_many :business_profiles, through: :business_profile_types
end
