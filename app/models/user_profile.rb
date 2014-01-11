class UserProfile < ActiveRecord::Base
  belongs_to :user
  extend FriendlyId
  friendly_id :name, use: :slugged
  acts_as_taggable
  acts_as_taggable_on :skills, :interests
end
