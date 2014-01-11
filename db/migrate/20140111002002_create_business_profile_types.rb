class CreateBusinessProfileTypes < ActiveRecord::Migration
  def change
    create_table :business_profile_types do |t|
      t.references :business_profile, index: true
      t.references :profile_type, index: true

      t.timestamps
    end
  end
end
