class CreateTimelines < ActiveRecord::Migration
  def change
    create_table :timelines do |l|

      l.string "user", limit: 25, default: "Alaa" 
      l.attachment :image
      l.text "content"  
      l.timestamps null: false

    end
  end
end
