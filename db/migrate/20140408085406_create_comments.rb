class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string 	:title
      t.text   	:body
      t.integer :publish_id
      t.timestamps
    end
  end
end
