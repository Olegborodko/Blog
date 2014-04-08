class CreateComs < ActiveRecord::Migration
  def change
    create_table :coms do |t|
      t.string :title
      t.text :body
      t.timestamps
    end
  end
end
