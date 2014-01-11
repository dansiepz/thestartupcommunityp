json.array!(@business_profiles) do |business_profile|
  json.extract! business_profile, :id, :name, :description, :url, :twitter, :facebook, :google, :employees, :slug, :address, :hiring, :image, :email, :phone, :linkedin, :github
  json.url business_profile_url(business_profile, format: :json)
end
