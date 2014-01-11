class BusinessProfile < ActiveRecord::Base
	extend FriendlyId
  	friendly_id :name, use: :slugged
  	
	has_many :business_profile_types
	has_many :profile_types, through: :business_profile_types
	has_many :user_business_profiles
  	has_many :users, through: :user_business_profiles
end
