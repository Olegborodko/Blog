class AddIndex < ActiveRecord::Migration
  def change
  	add_index :publishes, :user_id
  end
end
