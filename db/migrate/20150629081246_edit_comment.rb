class EditComment < ActiveRecord::Migration
  def change
  	remove_column :comments, :news_id
  	add_column :comments, :message_id, :integer
  end
end
