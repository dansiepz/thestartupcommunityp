class User < ActiveRecord::Base
  rolify
  extend FriendlyId
  friendly_id :name, use: :slugged
  has_many :new_items
  has_many :user_business_profiles
  has_many :business_profiles, through: :user_business_profiles
  has_one :user_profile

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
