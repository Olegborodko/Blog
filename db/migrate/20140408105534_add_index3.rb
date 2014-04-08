class AddIndex3 < ActiveRecord::Migration
  def change
add_column :coms, :publish_id, :integer
  end
end
