class CreateNewItems < ActiveRecord::Migration
  def change
    create_table :new_items do |t|
      t.references :user, index: true
      t.string :title
      t.string :url
      t.text :content
      t.integer :votes
      t.boolean :flagged

      t.timestamps
    end
  end
end
