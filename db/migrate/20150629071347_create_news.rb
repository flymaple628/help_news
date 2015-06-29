class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
    	t.string :title
    	t.string :content
    	t.integer :tag_id

      t.timestamps null: false
    end
  end
end
