class D8 < ActiveRecord::Migration
  def change
  	remove_column :publishes, :user_name, :string
  	add_column('publishes', 'user_id', :integer)
  end
end
