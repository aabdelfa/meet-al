class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      
   	  t.string "name", :limit => 25 
   	  t.integer "position", :limit => 11 
      t.boolean "visible", :default => false
      t.string "content_type", :limit => 256
      t.text "content"  
      t.string "icon", :limit => 50
      t.timestamps null: false

    end
  end
end
