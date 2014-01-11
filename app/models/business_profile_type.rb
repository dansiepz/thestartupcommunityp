class BusinessProfileType < ActiveRecord::Base
  belongs_to :business_profile
  belongs_to :profile_type
end
