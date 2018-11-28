class CreateActivityEntries < ActiveRecord::Migration
    def change
      create_table :activity_entries do |t|
        t.string :name
        t.integer :minutes
        t.integer :calories_burned
        t.references :user, foreign_key: true
  
        t.timestamps
      end
    end
  end