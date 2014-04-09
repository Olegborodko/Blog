class AddColumnNameId < ActiveRecord::Migration
  def change
  	add_column('coms', 'user_name', :string)
  end
end
