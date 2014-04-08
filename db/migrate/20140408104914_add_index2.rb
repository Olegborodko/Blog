class AddIndex2 < ActiveRecord::Migration
  def change
  	drop_table :comments
  end
end
