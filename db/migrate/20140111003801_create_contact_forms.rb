class CreateContactForms < ActiveRecord::Migration
  def change
    create_table :contact_forms do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :subject
      t.text :content

      t.timestamps
    end
  end
end
