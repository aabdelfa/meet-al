class CreateTimelines < ActiveRecord::Migration
  def change
    create_table :timelines do |l|

      l.string "user", limit: 25, default: "Alaa" 
      l.string "image", limit: 50, null: true
      l.text "content"  
      l.timestamps null: false

    end
  end
end
