json.array!(@user_profiles) do |user_profile|
  json.extract! user_profile, :id, :user_id, :about, :email, :phone, :url, :twitter, :facebook, :google, :slug, :mentor, :image, :name, :tagline, :linkedin, :github
  json.url user_profile_url(user_profile, format: :json)
end
